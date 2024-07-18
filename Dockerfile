# Use the official OpenJDK 17 image from Docker Hub
FROM public.ecr.aws/docker/library/openjdk:17.0.2
# Copy the compiled Java application JAR file into the container
ADD ./target/course-details.jar course-details.jar
# Expose the port the Spring Boot application will run on
EXPOSE 8080
# Command to run the application
ENTRYPOINT ["java", "-jar", "course-details.jar"]