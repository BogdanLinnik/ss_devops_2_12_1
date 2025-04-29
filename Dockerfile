FROM maven:3.9-amazoncorretto-17

WORKDIR /app

# Copy the Maven settings file
COPY settings.xml /root/.m2/settings.xml

# Copy the project files
COPY pom.xml .
COPY src ./src

# Set environment variable placeholder
ENV GITHUB_TOKEN=""

# Command to run Maven deploy
CMD ["mvn", "deploy"]