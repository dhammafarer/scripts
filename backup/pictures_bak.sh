#!/bin/bash

#SomeDirectory backup script
#Today's date in ISO-8601 format:
DATE=`date +"%Y-%b-%d_%T"`
#DATE=`date -I`
#The source directory:
SRC="/home/pawel/Pictures/"
#Include the following files:
#INCL="/home/pawel/scripts/backup/home_include"
#Exclude the following files:
EXCL="/home/pawel/Dropbox/Scripts/backup/home_ignorelist"
#The target directory:
TRG="/home/pawel/Desktop/usb/backup/Pictures/"
#The symlink directory of the last backup
LAST=$TRG"last"
#The location of log output file
LOG=$TRG"backup.log"
#The rsync options:
#--exclude-from=$EXCL \
OPT="-avh --info=progress2 --delete --link-dest=$LAST --log-file=$LOG"

#Check if directory is present
if [ ! -d $TRG ]; then
    mkdir -p $TRG
fi

#Remove backup.log
if [ -d $LOG ]; then
    rm $LOG
fi

#Execute the backup:
rsync $OPT $SRC ${TRG}$DATE

#remove symlink to previous snapshot
rm -f $LAST
#Create new symlink to the latest snapshot for the next backup
ln -s ${TRG}$DATE $LAST
