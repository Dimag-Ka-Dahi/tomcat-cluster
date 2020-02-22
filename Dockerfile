# cat Dockerfile 
FROM tomcat:7.0.94-jre7-alpine

ADD index.jsp /usr/local/tomcat/webapps/ROOT
ADD web.xml /usr/local/tomcat/conf
ADD server.xml /usr/local/tomcat/conf
ADD context.xml /usr/local/tomcat/conf
ADD rootweb.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/web.xml
ADD pre.sh /usr/local/tomcat

expose 8080
WORKDIR /usr/local/tomcat

ENTRYPOINT bash ./pre.sh && catalina.sh run