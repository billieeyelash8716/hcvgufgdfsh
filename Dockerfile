FROM eclipse-temurin:17-jdk

WORKDIR /opt/lavalink

# Download Lavalink.jar manually
RUN curl -L -o Lavalink.jar https://github.com/lavalink-devs/Lavalink/releases/download/4.0.4/Lavalink.jar

# Copy your config and plugin
COPY application.yml .
COPY plugins/ plugins/

# Expose Lavalink port
EXPOSE 2333

# Start Lavalink
CMD ["java
