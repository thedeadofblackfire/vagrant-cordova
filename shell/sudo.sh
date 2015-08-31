apt-get install -y python-software-properties software-properties-common unzip
#install JAVA
sudo apt-get -y install openjdk-7-jdk 
sudo apt-get -y install openjdk-7-jre 

apt-get install -y npm git ant expect

sudo apt-add-repository ppa:cordova-ubuntu/ppa
apt-get update
sudo apt-get install cordova-cli

apt-get update && apt-get install -f