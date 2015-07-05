FROM ubuntu
ADD . /opt
ENV JAVA_HOME=/opt/jdk1.8.0_45
ENV PATH=$PATH:$JAVA_HOME/bin
ENV CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
ENV TOMCAT_HOME=/opt/apache-tomcat-8.0.23
EXPOSE 8080
WORKDIR /opt
CMD $TOMCAT_HOME/bin/startup.sh

