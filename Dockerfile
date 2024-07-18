# Use the official OpenJDK 17 image from Docker Hub
FROM public.ecr.aws/docker/library/openjdk:17.0.2
# Set working directory inside the container
WORKDIR usr
# Copy the compiled Java application JAR file into the container
#ADD target/course-details-0.0.1-SNAPSHOT.jar course-details-0.0.1-SNAPSHOT.jar
COPY ./target/course-details-0.0.1-SNAPSHOT.jar ./usr
# Expose the port the Spring Boot application will run on
EXPOSE 8080
# Command to run the application
RUN ["java", "-jar", "course-details-0.0.1-SNAPSHOT.jar"]