FROM openjdk:8-jdk-alpine
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
ARG JAR_FILE=target/*.jar
COPY springgg-0.0.1-SNAPSHOT app.jar
ENTRYPOINT ["java","-jar","/app.jar"]