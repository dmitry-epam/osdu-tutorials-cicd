FROM openjdk   
COPY target/app.jar /app
CMD ["java", "-jar", "/app/target/app.jar"]
