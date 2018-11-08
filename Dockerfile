FROM tomcat:8.5
LABEL maintainer=bernd_donath@intergral.com

COPY target/mongodb-slow-operations-profiler-2.4.2.0.war /usr/local/tomcat/webapps/mongodb-profiler.war

