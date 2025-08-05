
FROM openjdk:8u151-jdk-alpine3.7
  
EXPOSE 8080
 
ENV APP_HOME /usr/src/app

COPY target/secretsanta-0.0.1-SNAPSHOT.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

ENTRYPOINT exec java -jar app.jar 


#FROM openjdk:8u151-jdk-alpine3.7 

# Set environment variable for application directory
#ENV APP_HOME=/usr/src/app 

# Create working directory
#WORKDIR $APP_HOME 

# Copy built JAR file into container
#COPY target/secretsanta-0.0.1-SNAPSHOT.jar app.jar 

# Expose the application port
#EXPOSE 8080 

# Run the application
#ENTRYPOINT ["java", "-jar", "app.jar"] 
