FROM eclipse-temurin:17-jdk

WORKDIR /opt/lavalink

COPY Lavalink.jar .
COPY application.yml .

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
