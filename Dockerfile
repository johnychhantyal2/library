# Use a base image with Maven and JDK pre-installed
FROM maven:3.8.4-openjdk-17-slim AS builder

# Set the working directory in the container
WORKDIR /app

# Copy the pom.xml and the rest of the source code
COPY pom.xml .
COPY src ./src

# Package the application
RUN mvn clean package -DskipTests

# Use a smaller base image for the runtime
FROM openjdk:17-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the builder stage to the runtime image
COPY --from=builder /app/target/libraryapp-0.0.1-SNAPSHOT.jar .

# Add MySQL Connector dependency
ADD https://repo1.maven.org/maven2/mysql/mysql-connector-java/8.0.27/mysql-connector-java-8.0.27.jar /app/lib/

# Expose the port your Spring Boot application listens on
EXPOSE 8080

# Specify the network
CMD ["java", "-jar", "libraryapp-0.0.1-SNAPSHOT.jar", "--spring.profiles.active=production"]
