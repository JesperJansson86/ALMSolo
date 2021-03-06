FROM adoptopenjdk/openjdk16:alpine-jre
EXPOSE 8080
ARG JAR_FILE=target/*.jar
WORKDIR /
COPY ${JAR_FILE} app.jar
ENTRYPOINT ['java', '-jar', 'app.jar']
