#ENV CATALINA_HOME=/usr/local/tomcat
FROM tomcat:jre8-alpine

ADD ./Config.properties /etc/
ADD ./Config.properties /usr/local/tomcat/ROOT/
