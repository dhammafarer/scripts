#!/bin/bash

#Remove backup.log
rm /media/pawel/Pawel-1.5TB/backup/home/backup.log

#Execute the backup:
rsync -avh --info=progress2 --delete --exclude-from=/home/pawel/Dropbox/Scripts/backup/home_ignorelist --link-dest=/media/pawel/Pawel-1.5TB/backup/home/last --log-file=/media/pawel/Pawel-1.5TB/backup/home/backup.log /home/pawel/ /media/pawel/Pawel-1.5TB/backup/home/`date "+%Y-%b-%d_%T"`

#remove symlink to previous snapshot
rm -f /media/pawel/Pawel-1.5TB/backup/home/last
#Create new symlink to the latest snapshot for the next backup
ln -s /media/pawel/Pawel-1.5TB/backup/home/`date "+%Y-%b-%d_%T"` /media/pawel/Pawel-1.5TB/backup/home/last
