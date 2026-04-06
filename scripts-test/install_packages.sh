#!/bin/bash
#
#This script takes the input of the package needs to be installed and installs it

read -p "Enter the package needs to be installed" package_name

echo "Checking if $package_name need to be installed or not ... "

if dpkg -s $package_name > /dev/null 2>&1 ; then
	echo " Package is already installed"
	exit 1
else
	"Package is not installed so continuing the installation process"
fi

echo "Updating the system and installing the requested package: " $package_name
sudo apt-get update #FOr updating the packages
sudo apt install $package_name -y #-y is to directly provide the yes input
echo "System has been updated and installed the requested package: " $package_name

sudo systemctl start $package_name
systemctl status $package_name
