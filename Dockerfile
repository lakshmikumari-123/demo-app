# Step 1: Use official Java runtime as base image
FROM eclipse-temurin:17-jre-alpine

# Step 2: Set working directory inside container
WORKDIR /app

# Step 3: Copy the jar file built by Maven into the container
COPY target/demo-app-1.0.0.jar app.jar

# Step 4: Expose port 8080 (the port Spring Boot runs on)
EXPOSE 8080

# Step 5: Command to run when container starts
ENTRYPOINT ["java", "-jar", "app.jar"]