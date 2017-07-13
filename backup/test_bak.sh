#!/bin/bash

#SomeDirectory backup script
#Today's date in ISO-8601 format:
DATE=`date "+%Y-%b-%d_%T"`
#The source directory:
SRC="/home/pawel/Desktop/test_rsync/"
#Exclude the following files:
EXCL="/home/pawel/Dropbox/Scripts/backup/home_ignorelist"
#The target directory:
TRG="/media/pawel/Pawel-1.5TB/backup/test_rsync/"
#The symlink directory of the last backup
LAST="/media/pawel/Pawel-1.5TB/backup/test_rsync/last"
#The number of latest backups to keep:
#KEEP=5
#The rsync options:
OPT="-avh --delete --exclude-from=$EXCL --link-dest=$LAST"

#Check if directory is present
if [ ! -d $TRG ]; then
    mkdir -p $TRG
fi
#Execute the backup:
rsync $OPT $SRC ${TRG}$DATE

#remove symlink to previous snapshot
rm -f $LAST
#Create new symlink to the latest snapshot for the next backup
ln -s ${TRG}$DATE $LAST

#Remove 31st and older entry
#rm -rf `ls -t | tail -n +$((KEEP+2))`
