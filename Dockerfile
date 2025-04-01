# Use OpenJDK as the base image
FROM openjdk:17

# Set working directory inside the container
WORKDIR /app

# Copy Java file to the container
COPY HelloWorld.java .

# Compile the Java program
RUN javac HelloWorld.java

# Command to execute the application
CMD ["java", "HelloWorld"]
