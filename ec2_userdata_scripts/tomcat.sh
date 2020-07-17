#!/bin/bash
#Use RedHat Linux AMI
#Enable Port Numbers -> 22, 8080
#Instance type -> t2.micro
yum update -y
yum install -y java-1.8*
echo 'JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.252.b09-3.el8_2.x86_64/bin' >>~/.bash_profile
echo 'PATH=$PATH:$JAVA_HOME:$HOME/bin' >>~/.bash_profile
source ~/.bash_profile
yum install -y wget
cd /opt
wget http://mirrors.ibiblio.org/apache/tomcat/tomcat-8/v8.5.57/bin/apache-tomcat-8.5.57.tar.gz
tar -xvzf apache-tomcat-8.5.57.tar.gz 
chmod +x apache-tomcat-8.5.57/bin/startup.sh
chmod +x apache-tomcat-8.5.57/bin/shutdown.sh
bash apache-tomcat-8.5.57/bin/startup.sh
ln -s apache-tomcat-8.5.57/bin/startup.sh /usr/local/bin/tomcatup 
ln -s apache-tomcat-8.5.57/bin/shutdown.sh /usr/local/bin/tomcatdown 
tomcatup