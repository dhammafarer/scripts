IP="192.168."
SRC="/home/pawel/Documents/"
EXCL="/home/pawel/Dropbox/Scripts/backup/home_ignorelist"
TRG="/home/pawel/Documents/"
LOG="/home/pawel/Dropbox/sync_documents.log"
OPT="-ah --info=progress2 --update --exclude Blender --exclude misc --exclude ebooks --exclude dossier --exclude bitan --log-file=$LOG"

rsync $OPT $IP$1:$SRC $TRG
