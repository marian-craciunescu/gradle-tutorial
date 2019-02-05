#!/bin/bash

sudo apt-get install openjdk-8-jdk openjdk-8-jre -y
java -version
#>> java version "1.8.0_121"
#download gradle
curl -L -O https://services.gradle.org/distributions/gradle-5.1.1-all.zip
#extract gradle
mkdir /opt/gradle
unzip -d /opt/gradle gradle-5.1.1-all.zip
ls /opt/gradle/gradle-5.1.1
# >>LICENSE  NOTICE  bin  getting-started.html  init.d  lib  media

#add gradle to path
echo "export PATH=$PATH:/opt/gradle/gradle-5.1.1/bin" >> /etc/profile.d/gradle.sh
echo "export PATH=$PATH:/opt/gradle/gradle-5.1.1/bin" >> ~/.bashrc
source ~/.bashrc
#verify
gradle -v
