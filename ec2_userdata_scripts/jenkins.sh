#!/bin/bash
#Use RedHat Linux AMI
#Enable Port Numbers -> 22, 8080
#Instance type -> t2.micro
yum update -y
yum install -y git
yum install -y java-1.8*
echo 'JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.252.b09-3.el8_2.x86_64/bin' >>~/.bash_profile
echo 'PATH=$PATH:$JAVA_HOME:$HOME/bin' >>~/.bash_profile
source ~/.bash_profile
yum install -y wget
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
yum install -y jenkins
service jenkins start