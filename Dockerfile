# Step 1: Use an official Tomcat image as a base image
FROM tomcat:9.0
COPY --from=build /app/target/mywebapp.war /usr/local/tomcat/webapps/

# Expose the default port 8080
EXPOSE 8080

# Step 2: Run Tomcat
CMD ["catalina.sh", "run"]
