<< Disclaimer
This script is used for creating the new users
Kindly creating user wisely
Disclaimer

#for i in {1..5}
#do
#	read -p "Enter the user name" user_name

#	sudo useradd -m $user_name
#	echo "User $user_name added successfully"
#done

<< Another_method

Another_method

for ((i=1 ; i<=2 ; i++))
do
	read -p "Enter the user name: " user_name
	sudo useradd -m $user_name # -m stands to create a user in the home directory
	echo "User $user_name added successfully"
done
