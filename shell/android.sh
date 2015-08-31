#download android sdk

SDK_NAME=android-sdk_r24-linux.tgz
SDK_URL=http://dl.google.com/android/$SDK_NAME

cd /tmp
curl -0 $SDK_URL
sudo tar -xzvf $SDK_NAME && mv -rf android-sdk-linux /opt/
sudo chown -Rf vagrant /opt/android-sdk-linux
sudo chmod -Rf 755 /opt/android-sdk-linux

echo "ANDROID_HOME=/opt/android-sdk-linux" >> /home/vagrant/.bashrc
echo "export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-i386" >> /home/vagrant/.bashrc
echo "PATH=\$PATH:/opt/android-sdk-linux/tools:/opt/android-sdk-linux/platform-tools" >> /home/vagrant/.bashrc

sudo cat > /etc/udev/rules.d/51-android.rules <<EOF
SUBSYSTEM=="usb", ATTRS{idVendor}=="0bb4", MODE="0666"

SUBSYSTEM=="usb", ATTRS{idVendor}=="0502", MODE="0666"

SUBSYSTEM=="usb", ATTRS{idVendor}=="12d1", MODE="0666"

SUBSYSTEM=="usb", ATTRS{idVendor}=="1004", MODE="0666"

SUBSYSTEM=="usb", ATTRS{idVendor}=="22b8", MODE="0666"

SUBSYSTEM=="usb", ATTRS{idVendor}=="04e8", MODE="0666"

SUBSYSTEM=="usb", ATTRS{idVendor}=="0fce", MODE="0666"

SUBSYSTEM=="usb", ATTRS{idVendor}=="0489", MODE="0666"

SUBSYSTEM=="usb", ATTRS{idVendor}=="18d1", SYMLINK+="android_adb", MODE="0666"

SUBSYSTEM=="usb", ATTRS{idVendor}=="04e8", MODE="0666", GROUP="plugdev"
EOF