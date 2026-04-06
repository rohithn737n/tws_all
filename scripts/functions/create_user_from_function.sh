#!/bin/bash

<< usage
-take user name as input
-take password as input
- check if user already exists
-create the user
usage
create_user() {
read -p "Enter the username" username

#check if the user already exists

if id "$username" &>/dev/null;then
	echo "User already exists."
	exit 1
else
	echo "The user $username does not exist and will be created now."
fi

read -p "Enter the password" password

sudo useradd -m $username -p $password

echo "User $username has been added successfully."

}
