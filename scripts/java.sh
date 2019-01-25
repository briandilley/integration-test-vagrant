#!/bin/bash -e

# install jdk 11 as default
sudo wget https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_linux-x64_bin.tar.gz -O /tmp/openjdk-11.0.2_linux-x64_bin.tar.gz
sudo tar -xvf /tmp/openjdk-11.0.2_linux-x64_bin.tar.gz -C /opt/
for i in `ls /opt/jdk-11.0.2/bin/`
do
    sudo update-alternatives --install /usr/bin/$i $i /opt/jdk-11.0.2/bin/$i 1002
done
sudo update-alternatives --install /usr/bin/java java /opt/jdk-11.0.2/bin/java 1

# install jdk 8 as backup
sudo wget https://download.java.net/java/early_access/jdk8/b03/BCL/jdk-8u202-ea-bin-b03-linux-x64-07_nov_2018.tar.gz -O /tmp/jdk-8u202-ea-bin-b03-linux-x64-07_nov_2018.tar.gz
sudo tar -xvf /tmp/jdk-8u202-ea-bin-b03-linux-x64-07_nov_2018.tar.gz -C /opt/

# som QOL stuff
export JAVA_HOME=/opt/jdk-11.0.2
echo "export JAVA_HOME=/opt/jdk-11.0.2" >> $HOME/.bashrc

# report it
echo "### JAVA VERSION:"
java -version
