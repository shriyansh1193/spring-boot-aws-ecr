# Use the official OpenJDK 17 image from Docker Hub
FROM public.ecr.aws/docker/library/openjdk:17.0.2
# Set working directory inside the container
# Copy the compiled Java application JAR file into the container
COPY ./target/course-details.jar ./tmp
# Expose the port the Spring Boot application will run on
EXPOSE 8080
# Command to run the application
CMD ["java", "-jar", "course-details.jar"]