FROM maven:3.8.5-openjdk:8 AS build
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:8-jdk-alpine
#ARG JAR_FILE=target/praksa2022-0.0.1-SNAPSHOT.jar
#COPY ${JAR_FILE} app.jar
COPY --from=build /target/praksa2022-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar","app.jar"]