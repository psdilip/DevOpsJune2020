#!/bin/bash
#Use RedHat Linux AMI
#Enable Port Numbers -> 22, 8081, 8082
#Instance type -> t2.small
yum update -y
yum install -y java-1.8*
echo 'JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.252.b09-3.el8_2.x86_64/bin' >>~/.bash_profile
echo 'PATH=$PATH:$JAVA_HOME:$HOME/bin' >>~/.bash_profile
source ~/.bash_profile
yum install -y unzip
yum install -y wget
cd /opt
wget https://jfrog.bintray.com/artifactory/jfrog-artifactory-oss-6.9.6.zip
unzip jfrog-artifactory-oss-6.9.6.zip
artifactory-oss-6.9.6/bin/artifactory.sh