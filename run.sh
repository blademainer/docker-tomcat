#!/bin/sh

if [ ! -f /.tomcat_admin_created ]; then
    /create_tomcat_admin_user.sh
fi

exec $TOMCAT_HOME/bin/catalina.sh run
