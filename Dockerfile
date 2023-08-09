# Use a base Java image from Docker Hub
FROM openjdk:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the classes directory into the container
COPY Classes /app/Classes

# Compile the Java code
RUN javac /app/Classes/App.java

# Run the Java program when the container starts
CMD ["java", "-classpath", "/app/Classes", "Main"]