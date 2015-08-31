# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

	# Box
	config.vm.box = "ubuntu/trusty32"
	
	#IP
	config.vm.network "private_network", ip: "192.168.11.100"

	# Ports
	config.vm.network "forwarded_port", guest: 8100, host: 8100
	config.vm.network "forwarded_port", guest: 35729, host: 35729

	# Shared folder
	config.vm.synced_folder "/opt/android-sdk-linux/", "/opt/android-sdk-linux", create: true   
	config.vm.synced_folder "./data", "/vagrant_data", create: true

	#usb device support
	config.vm.provider "virtualbox" do |vb|
     vb.customize ["modifyvm", :id, "--usb", "on"]
     #vb.customize ["usbfilter", "add", "0", "--target", :id, "1197123b", "--vendorid", "0x04e8"]
     vb.customize ["usbfilter", "add", "0", "--target", :id, "--name", "android", "--vendorid", "0x18d1"]
    end

	# shell
	config.vm.provision "shell", path: "shell/sudo.sh"
	config.vm.provision "shell", path: "shell/android.sh"
	config.vm.provision "shell", path: "shell/npm.sh"

end