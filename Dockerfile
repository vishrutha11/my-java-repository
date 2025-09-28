# Step 1: Use an official JDK base image
FROM openjdk:17-jdk-slim

# Step 2: Set working directory inside container
WORKDIR /app

# Step 3: Copy all project files into container
COPY . /app

# Step 4: Compile Java source code
RUN javac SimpleWebServer.java

# Step 5: Expose port 8000
EXPOSE 8000

# Step 6: Run the Java program
CMD ["java", "SimpleWebServer"]
