#!/bin/bash

echo "this would be triggered through systemd"
who >> log.txt
date >>  log.txt
git checkout experiment/custom-configuration-on-tag-1.0.0-lite
git pull origin
cd ./bahmni-lite
pwd >> log.txt
./run-bahmni.sh .env 1
docker ps >> log.txt

