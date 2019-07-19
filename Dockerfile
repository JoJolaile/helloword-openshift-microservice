FROM maven:3.5.2-jdk-8-alpine AS MAVEN_TOOL_CHAIN

COPY pom.xml /tmp/
COPY src /tmp/src/

WORKDIR /tmp/
RUN mvn package


FROM openjdk:8-jdk-alpine

RUN mkdir /application
COPY --from=MAVEN_TOOL_CHAIN /tmp/target/*.jar /application

EXPOSE 8080

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/application/greetings-service-0.0.1-SNAPSHOT.jar"]
