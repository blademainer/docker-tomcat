FROM ubuntu
ADD . $HOME
ENV JAVA_HOME=$HOME/jdk1.8.0_45
ENV CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
ENV TOMCAT_HOME=$HOME/apache-tomcat-8.0.23
ENV PATH=$PATH:$JAVA_HOME/bin:$TOMCAT_HOME/bin
ENV TOMCAT_PASS=admin
RUN set -x $HOME
RUN chmod 777 $HOME -R

ADD create_tomcat_admin_user.sh /create_tomcat_admin_user.sh
ADD run.sh /run.sh
RUN chmod +x /*.sh

EXPOSE 8080
WORKDIR $HOME
#CMD $TOMCAT_HOME/bin/startup.sh
CMD ["/run.sh"]

