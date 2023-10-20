FROM openjdk:21-jdk-oracle

EXPOSE 8081

RUN mkdir /app

LABEL image.name="kuaa_test"

COPY build/libs/*.jar /app/alumni-connect-backend-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java", "-jar","/app/alumni-connect-backend-0.0.1-SNAPSHOT.jar"]

