#!/usr/bin/env bash
# Deployment script to  build and publish
# a docker image for a git repo to dockerhub

if [ ! "$2" ]; then
    echo -e "\e[31m[-] Exiting provide all arguments as specified\e[0m"
    echo
    echo "Usage ./builder <git repository> <registry/repo>"
    exit 23

fi

# get directory name from the repo
DIR_NAME=$(echo "$1" | awk -F '/' '{print $2}')

git clone "https://github.com/$1"

echo "[+] Project cloned from github, moving to phase two"
echo

cd "$DIR_NAME" || exit

docker build -t "$2" . || exit

docker push "$2"
