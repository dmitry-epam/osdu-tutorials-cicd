FROM maven:3.6-jdk-8-alpine
WORKDIR /app
COPY app.jar /app
COPY pom.xml
COPY src ./src
RUN mvn -e -B package
CMD ["java", "-jar", "/app/app.jar"]
