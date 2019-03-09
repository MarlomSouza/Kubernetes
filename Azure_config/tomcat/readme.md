docker build -t marlom1012/tomcat-example
docker run -it -p 8080:8080 --rm -v PATH:/usr/local/tomcat/conf/tomcat-users.xml tomcat:8.0
docker run -it -p 8080:8080 --rm marlom1012/tomcat-example