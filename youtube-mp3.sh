#!/bin/bash

GREEN='\033[0;32m' 
LGREEN='\033[1;32m' 
WHITE='\033[1;37m'
YELL='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color
 

 

link=$1

printf "Command line is : ${YELL}'youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 "link"'${NC}\n"


#Télécharger le bestaudio (possible opus)
#yt-dlp -x -f bestaudio "$link"

#Pour conserver les metadonnées
yt-dlp -x -f bestaudio[ext=m4a] --add-metadata --embed-thumbnail "$link"


#youtube-dl is dead
#printf "Command line is : ${YELL}'youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 "link"'${NC}\n"
#youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 "$link"

##source ${BASH_SOURCE[0]}
##Ceci fonctionne
