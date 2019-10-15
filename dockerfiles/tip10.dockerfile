FROM maven:3.6-jdk-8-alpine AS builder
WORKDIR /app
COPY pom.xml
RUN mvn -e -B dependency:resolve
COPY src ./src
RUN mvn -e -B package
CMD ["java", "-jar", "/app/app.jar"]
