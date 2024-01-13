FROM ubuntu:20.04

#set time zone for java
RUN ln -s /usr/share/zoneinfo/Europe/Moscow /etc/localtime

#3
RUN apt update
RUN apt install git -y

#5
RUN apt install default-jdk -y 
RUN apt install maven -y

#7
RUN cd /tmp && \
    git clone https://github.com/spring108/App42PaaS-Java-MySQL-Sample.git


#ADD ./Config.properties /tmp/Config.properties
#RUN rm /tmp/App42PaaS-Java-MySQL-Sample/WebContent/Config.properties && \
#    cp /tmp/Config.properties /tmp/App42PaaS-Java-MySQL-Sample/WebContent/Config.properties

RUN cd /tmp/App42PaaS-Java-MySQL-Sample && \
    mvn package

#RUN mv /tmp/boxfuse-sample-java-war-hello/target/hello-1.0.war /tmp/common_folder/hello.war

