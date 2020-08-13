FROM openjdk:8-alpine

MAINTAINER Jean Alves

RUN apk update && apk add bash

RUN mkdir -p /opt/app

ENV PROJECT_HOME /opt/app

COPY target/spring-boot-docker.jar $PROJECT_HOME/spring-boot-docker.jar

WORKDIR $PROJECT_HOME

CMD ["java", "-jar", "-Dspring.profiles.active=prod" ,"./spring-boot-docker.jar"]