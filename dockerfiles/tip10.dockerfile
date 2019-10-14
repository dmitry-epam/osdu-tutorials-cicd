FROM maven:3.6-jdk-8-alpine AS builder
WORKDIR /app
COPY app.jar /app
COPY pom.xml
COPY src ./src
RUN mvn -e -B package
CMD ["java", "-jar", "/app/app.jar"]

FROM openjdk:8-jre-alpine
COPY --from=builder /app/target/app.jar
CMD ["java", "-jar", "/app/app.jar"]
