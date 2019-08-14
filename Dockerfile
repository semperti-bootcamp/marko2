FROM openjdk:8-alpine
WORKDIR /root
RUN mkdir /root/upload
COPY .  /root/upload/
ADD http://10.252.7.162:8081/repository/maven-snapshots/com/semperti/trial/journals/3.3-SNAPSHOT/journals-3.3-20190806.221420-3.jar /tmp/journals-3.3-20190806.221420-3.jar
CMD ["java","-jar","/tmp/journals-3.3-20190806.221420-3.jar"]
EXPOSE 8080

