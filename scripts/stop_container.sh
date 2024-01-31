#!/bin/bash
set -e

# Stop the running container (if any)
echo "Hi"
cid=docker ps | awk -F " " '{print $1}' | tail -1
docker rm -f $cid