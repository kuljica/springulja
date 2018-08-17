#FROM openjdk:8-jdk-alpine
FROM maven:3-jdk-8-alpine

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8080

# The application's jar file
#ARG JAR_FILE=target/springulja-0.0.1-SNAPSHOT.jar
ADD . /app
RUN mvn clean install -f /app/pom.xml

# Add the application's jar to the container
#ADD ${JAR_FILE} springulja.jar

# Run the jar file 
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app/target/springulja-0.0.1-SNAPSHOT.jar"]
