# Use official Tomcat 9 base image
FROM tomcat:9.0

# Remove default Tomcat ROOT application
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR into Tomcat webapps as ROOT
COPY target/ticket-reservation-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
