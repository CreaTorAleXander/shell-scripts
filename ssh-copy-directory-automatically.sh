#!/bin/bash
# if true check if project exists and delete it
if sshpass -p "<password>" ssh <username>@<ipaddr> ls -al | grep <directory>
	then sshpass -p "<password>" ssh <username>@<ipaddr> rm -r <path_to_directory> # best relative to the home folder
	echo "deleted succesfully"
else
	sshpass -p "<password>" scp -r < ubuntu@192.168.3.100:<path_to_directory>
	echo "created succesfully"
	# if this script is in the same directory, you can find this script in this repo
	./connect-ssh.sh cd SEW_First_Project
	# alternative if you dont have this script
	sshpass -p "<password>" ssh <username>@<ip-addr>
fi 

