#!/bin/bash
set -e
set -o pipefail
# Stop the running container (if any)
echo "removing container..."
containerid=`sudo docker ps -q | awk -F" " '{print $1}' | tail -1`
printf "containerid set to: %s \n" $containerid 
if [[ -z $containerid ]]; then
    printf "No existing container: %s \n" $containerid
else
    printf "Stopping %s \n" $containerid
    sudo docker rm -f $containerid
fi
