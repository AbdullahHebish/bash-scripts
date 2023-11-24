#!/bin/bash
echo "Enter file name"
read filename
PS3="Choose from these options"
select n in "create file" "edit file" "execute file " "remove file"
do
	case $REPLY in
		1) touch $filename 
			break ;;
		2) vi $filename
		       	break ;;
		3) chmod +x $filename ;./$filename 
			break ;;
		4) rm -r $filename
		       	break ;;
		*)echo "your choice not found ,please choose from list";;
	esac
done
