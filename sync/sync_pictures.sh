IP="192.168."
SRC="/home/pawel/Pictures/"
EXCL="/home/pawel/scripts/backup/home_ignorelist"
TRG="/home/pawel/Pictures/"
LOG="/home/pawel/Dropbox/sync_pictures.log"
OPT="-ah --info=progress2 --update --log-file=$LOG"

rsync $OPT $IP$1:$SRC $TRG
