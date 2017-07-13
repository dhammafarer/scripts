#!/bin/bash

#SomeDirectory backup script
#Today's date in ISO-8601 format:
DATE=`date "+%Y-%b-%d_%T"`
#The source directory:
SRC="/home/pawel/"
#Exclude the following files:
EXCL="/home/pawel/Dropbox/Scripts/backup/home_ignorelist"
#The target directory:
TRG="/media/pawel/Pawel-1.5TB/backup/home/"
#The symlink directory of the last backup
LAST="/media/pawel/Pawel-1.5TB/backup/home/last"
#The location of log output file
LOG="/media/pawel/Pawel-1.5TB/backup/home/backup.log"
#The rsync options:
OPT="-avh --info=progress2 --delete --exclude-from=$EXCL --link-dest=$LAST --log-file=$LOG"

#Check if directory is present
if [ ! -d $TRG ]; then
    mkdir -p $TRG
fi

#Remove backup.log
rm $LOG

#Execute the backup:
#rsync $OPT $SRC ${TRG}$DATE
rsync $OPT /home/pawel/ /media/pawel/Pawel-1.5TB/backup/testing/

#remove symlink to previous snapshot
rm -f $LAST
#Create new symlink to the latest snapshot for the next backup
ln -s ${TRG}$DATE $LAST
