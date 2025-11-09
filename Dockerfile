# Use official Lavalink base image
FROM ghcr.io/lavalink-devs/lavalink:4.0.4

# Set working directory
WORKDIR /opt/lavalink

# Copy your Lavalink config
COPY application.yml .

# Create plugins directory and copy the YouTube plugin
COPY plugins/ plugins/

# Expose Lavalink port
EXPOSE 2333
