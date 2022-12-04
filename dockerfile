# syntax=docker/dockerfile:1

FROM eclipse-temurin:17-jdk-jammy
WORKDIR /testeDocker

COPY .mvn/ .mvnt
COPY mvnw pom.xml ./

RUN ./mvnw dependency:resolve

COPY src ./src
EXPOSE 3000

CMD ["./mvnw", "spring-boot:run"]