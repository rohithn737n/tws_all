#!/bin/bash
#
<< readme
This is a backup with 5 days rotation

Usage:
./backup.sh <path to your source> <path to the backup folder>
readme

function display_usage {
	
	echo "./backup.sh <path to your source> <path to the backup folder>"

}

source_dir=$1
timestamp=$(date '+%Y-%m-%d-%H-%M-%S') #shell commnds are assigned to a variable using "$()"
backup_dir=$2
# "$#" ----> Counts the no. of characters in the argeument
if [ $# -eq 0 ]; then

	display_usage
fi

create_backup() {
	
	zip -r "${backup_dir}/backup_${timestamp}.zip" "${source_dir}" > /dev/null

	if [ $? -eq 0 ]; then #Checking if the above command has input or not
		echo "backup generated successfully for ${timestamp}"
	fi
}	

#${backup_dir}/backup_${timestamp}.zip will be backed up in form of a string

perform_rotation() {

	backups=($(ls -t "${backup_dir}/backup_"*.zip 2>/dev/null))
        #2> dev/nul ---> Standard errors will be discarded	
	#shell commnds are assigned to a variable using "$()"
	#since it would have multple backups we have to convert it into an array

	#echo "${backups[@]}" #[@]---> This depicts it is an array

	#check if he backups in the file is more than 5 or not
	if [ "${#backups[@]}" -gt 5 ]; then
		echo "Performing rotation for 5 days"
		# array slicing will be performed to pick the top/latest file
		backups_to_remove=("${backups[@]:5}")

		for backup in "${backups_to_remove[@]}";
		do
			rm -rf ${backup}
		done
	fi
}

create_backup
perform_rotation
