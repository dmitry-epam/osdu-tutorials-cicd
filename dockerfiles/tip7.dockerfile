FROM openjdk:8   
COPY target/app.jar /app
CMD ["java", "-jar", "/app/target/app.jar"]
