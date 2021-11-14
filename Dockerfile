FROM openjdk:11
MAINTAINER oscar
RUN apt-get update
RUN apt-get install -y wget

RUN cd /

RUN wget http://apache.stu.edu.tw/tomcat/tomcat-9/v9.0.54/bin/apache-tomcat-9.0.54.tar.gz

RUN tar zxvf apache-tomcat-9.0.54.tar.gz

CMD ["/apache-tomcat-9.0.54/bin/catalina.sh", "run"]

EXPOSE 8080
