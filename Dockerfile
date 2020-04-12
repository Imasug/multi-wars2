FROM tomcat

ADD ./project-a/target/project-a.war /usr/local/tomcat/webapps
ADD ./project-b/target/project-b.war /usr/local/tomcat/webapps
