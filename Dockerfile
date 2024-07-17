# Use the official OpenJDK 17 image from Docker Hub
FROM public.ecr.aws/docker/library/openjdk:17.0.2
# Set working directory inside the container
RUN echo ${PWD} && ls -lR

EXPOSE 8080
# Command to run the application
CMD ["java", "-jar", "course-details.jar"]