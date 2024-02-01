#!/bin/bash
set -e
set -o pipefail
# Stop the running container (if any)
echo "removing container..."
containerid=`sudo docker ps | awk -F" " '{print $1}' | tail -1`
printf "Stopping %s" $containerid
sudo docker rm -f $containerid