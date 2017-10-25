FROM tomcat:8.0

RUN mkdir -p /usr/local/tomcat/webapps/simplejava
COPY target/my-app-1.0-SNAPSHOT.jar /usr/local/tomcat/webapps/simplejava/simplejava.jar