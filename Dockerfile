FROM openjdk:8-jdk-alpine

# Kopiraj ceo target direktorijum
COPY target/ target/
# Kopiraj JAR fajl iz target direktorijuma u root direktorijum u kontejneru
COPY target/praksa2022-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar","/app.jar"]