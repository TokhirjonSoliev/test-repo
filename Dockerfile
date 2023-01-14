FROM tomcat:9.0-jdk11-corretto

RUN rm -rf /usr/local/tomcat/webapps/*

ARG WAR_FILE=target/ROOT.war

COPY ${WAR_FILE} /usr/local/tomcat/webapps/

CMD ["catalina.sh","run"]
