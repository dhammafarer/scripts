#!/bin/bash

#SomeDirectory backup script
#Today's date in ISO-8601 format:
#DATE=`date +"\%Y-\%b-\%d_\%T"`
DATE=`date -I`
#The source directory:
SRC="/media/pawel/Kindle/documents/"
#Exclude the following files:
#EXCL="/home/pawel/Dropbox/Scripts/backup/home_ignorelist"
#The target directory:
TRG="/media/pawel/Pawel-1.5TB/backup/Kindle/"
#The symlink directory of the last backup
LAST="/media/pawel/Pawel-1.5TB/backup/Kindle/last"
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
