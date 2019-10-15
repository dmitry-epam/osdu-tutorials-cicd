FROM debian
RUN apt-get update \
 && apt-get -y install --no-nstall-recommends \
    openjdk-8-jdk ssh vim
COPY target/app.jar /app
CMD ["java", "-jar", "/app/target/app.jar"]
