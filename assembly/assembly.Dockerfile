FROM ubuntu:20.04

#set time zone for java
RUN ln -s /usr/share/zoneinfo/Europe/Moscow /etc/localtime

RUN apt update
RUN apt install git -y
RUN apt install default-jdk -y
RUN apt install maven -y

RUN cd /tmp && \
    git clone https://github.com/shephertz/App42PaaS-Java-MySQL-Sample.git


#RUN rm /tmp/App42PaaS-Java-MySQL-Sample/WebContent/Config.properties
#ADD Config.properties /tmp/App42PaaS-Java-MySQL-Sample/WebContent/


RUN cd /tmp/App42PaaS-Java-MySQL-Sample && \
    mvn package

#RUN mv /tmp/boxfuse-sample-java-war-hello/target/hello-1.0.war /tmp/common_folder/hello.war

