#!/bin/bash
# script3: disk and permission auditor
# it checks some imp system directories and prints permissions,
# and disk usage

# list of directories
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
echo "directory audit report"
echo "----------------------"

#looping thru each dir
for DIR in "${DIRS[@]}"; do
	# if dir exists:
	if [ -d "$DIR" ]; then
	#get permissions
	# awk is used to extract needed cols
		PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
	#get disk usage of directory
	# du -sh gives size
		SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
	#print result
		echo "$DIR => Permissions: $PERMS | Size: $SIZE"
	else 
		echo "$DIR does not exist"
	fi
done


#checking config directory
CONFIG="/etc"
#checking existence
if [ -d "$CONFIG" ]; then
	CONF_PERM=$(ls -ld $CONFIG | awk '{print $1,$3}'
	echo "Config dir ($CONFIG) permissions are: $CONF_PERM"
else
	echo "dir not found"
fi
