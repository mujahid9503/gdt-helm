# Fetching latest version of Java
FROM openjdk:8
# Setting up work directory
WORKDIR /app
# Copy the jar file into our app
COPY ./target/test-0.0.1-SNAPSHOT.jar /app
# Exposing port 8085
EXPOSE 8085
# Starting the application
CMD ["java", "-jar", "test-0.0.1-SNAPSHOT.jar"]