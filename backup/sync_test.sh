IP="192.168.0.78"
SRC="/home/pawel/Documents"
EXCL="/home/pawel/Dropbox/Scripts/backup/home_ignorelist"
TRG="/home/pawel/"
OPT="-avh --delete --exclude-from=$EXCL"

rsync $OPT $IP:$SRC $TRG
