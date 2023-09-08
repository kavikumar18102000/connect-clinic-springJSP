FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp

COPY target/clinic-0.0.1-SNAPSHOT.jar clinc

EXPOSE 8080

ENTRYPOINT ["java","-jar","/clinic.jar"]