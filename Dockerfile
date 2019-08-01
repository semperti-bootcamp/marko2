FROM openjdk:8-jdk-alpine
WORKDIR /tmp
RUN mkdir /tmp/upload
COPY ./upload/ /tmp/upload/
COPY journals-SNAPSHOT-1.0.jar /tmp/journals-SNAPSHOT-1.0.jar
CMD ["java","-jar","tmp/journals-SNAPSHOT-1.0.jar"]
EXPOSE 8080
