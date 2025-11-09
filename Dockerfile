FROM ghcr.io/lavalink-devs/lavalink:4.0.4

WORKDIR /opt/lavalink

COPY application.yml .
COPY plugins/ plugins/
