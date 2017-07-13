IP="192.168.1.80"
SRC="/home/pawel/"
EXCL="/home/pawel/Dropbox/Scripts/backup/home_ignorelist"
TRG="/home/pawel/"
LOG="/home/pawel/Dropbox/sync.log"
OPT="-ah --info=progress2 --delete --exclude-from=$EXCL --log-file=$LOG"

rsync $OPT $IP:$SRC $TRG
