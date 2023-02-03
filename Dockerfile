FROM maven:3.8.5-openjdk-17-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app
USER root
RUN --mount=type=cache,target=/root/.m2 mvn -f /home/app/pom.xml clean package