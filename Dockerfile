FROM openjdk:8-jdk-alpine

EXPOSE 8080

RUN mkdir /application
COPY ./target/greetings-service-0.0.1-SNAPSHOT.jar /application

ENTRYPOINT ["java", "-jar", "/application/greetings-service-0.0.1-SNAPSHOT.jar"]
