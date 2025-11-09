FROM eclipse-temurin:17-jdk

WORKDIR /opt/lavalink

# Download Lavalink JAR from GitHub releases
RUN curl -L -o Lavalink.jar https://github.com/freyacodes/Lavalink/releases/latest/download/Lavalink.jar

COPY application.yml .

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
