#!/bin/sh
sudo docker run -v ~/workspace/docker/tomcat-work-dir:/apache-tomcat-8.0.23/webapp -d -p 8080:8080 blademainer/tomcat
