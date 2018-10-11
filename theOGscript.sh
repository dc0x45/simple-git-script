#!/bin/bash

RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# This is the current directory that the script will work in. Change as needed.

projDir="C:\Users\dcote\Desktop\APCSP\simple-git-script"

printf "\n${BLUE}The current date and time is:${NC} \n"

echo $(date "+%D %T")

sleep 1.5

cd $projDir

WD="$(pwd)"

printf "\n${BLUE}The current working directory is:${NC} $WD \n\n"

read -rsp $'If this is the correct directory, press any key to continue...\n' -n1 key



printf "\n\n${RED}Git status:${NC} \n"
git status

git add .

git commit -m "updated"

printf "\n${RED}Pushing git:${NC} \n"
git push origin master

printf "\n\nEverything should of worked, so this script will exit in 10 seconds \n"

#sleep 10
