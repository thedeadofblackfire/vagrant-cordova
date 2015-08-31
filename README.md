# vagrant-cordova-environment
###Quick setup for cordova application using vagrant.

Here is a simple and quick vagrant file along with clear cut shell files to install fullfilments of a new cordova application.

Many people try to go with puphpet / chef or any other provisioning tools, i personaly prefer the basic commands, which are very handy to customize.

##Steps
1. clone repository to your project folder
git clone https://github.com/ankibalyan/vagrant-cordova-environment.git

2. change the sync folder if you want to change in the vagrantfile

3. execute setup by 
sudo vagrant up

4. cd /vagrant_data; /* if sync folder name if not changed */

5. create cordova project
cordova create forlderName com.package.appname Appname

6. run live version to browser
cordova serve

7. build apk
cordova build

Wohaa! That's all. Thanks for reading.
