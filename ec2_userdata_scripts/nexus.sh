#!/bin/bash
#Use RedHat Linux AMI
#Enable Port Numbers -> 22, 8081
#Instance type -> t2.small
yum update -y
yum install -y java-1.8*
echo 'JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.252.b09-3.el8_2.x86_64/bin' >>~/.bash_profile
echo 'PATH=$PATH:$JAVA_HOME:$HOME/bin' >>~/.bash_profile
source ~/.bash_profile
yum install -y wget
cd /opt
wget https://sonatype-download.global.ssl.fastly.net/nexus/3/nexus-3.0.2-02-unix.tar.gz
tar -xvzf nexus-3.0.2-02-unix.tar.gz
mv nexus-3.0.2-02 nexus
adduser nexus
chown -R nexus:nexus nexus
echo 'run_as_user="nexus"' >> nexus/bin/nexus.rc
ln -s nexus/bin/nexus /etc/init.d/nexus
service nexus start
nexus/bin/nexus start