# Use Java 17 base image
FROM eclipse-temurin:17-jdk

# Set working directory
WORKDIR /opt/lavalink

# Download Lavalink JAR from official GitHub release
RUN curl -L -o Lavalink.jar https://github.com/freyacodes/Lavalink/releases/latest/download/Lavalink.jar

# Create plugins directory and download YouTube source plugin
RUN mkdir plugins && \
    curl -L -o plugins/youtube-source.jar https://github.com/lavalink-devs/youtube-source/releases/latest/download/youtube-source.jar

# Copy Lavalink config
COPY application.yml .

# Expose Lavalink port
EXPOSE 2333

# Run Lavalink
CMD ["java", "-jar", "Lavalink.jar"]
