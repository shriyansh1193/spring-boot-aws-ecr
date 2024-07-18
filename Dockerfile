# Use the official OpenJDK 17 image from Docker Hub
FROM public.ecr.aws/docker/library/openjdk:17.0.2
RUN mkdir /app

# Copy the compiled Java application JAR file into the container
COPY ./target/course-details.jar /app/course-details.jar
# Expose the port the Spring Boot application will run on
WORKDIR /app
EXPOSE 8080
# Command to run the application
ENTRYPOINT ["java", "-jar", "course-details.jar"]