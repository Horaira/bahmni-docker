#!/bin/bash

echo "this would be triggered through systemd"
date >  $(date +"%Y_%m_%d_%I_%M_%p").log
git checkout experiment/custom-configuration-on-tag-1.0.0-lite
git pull origin
cd ./bahmni-lite/
date > $(date +"%Y_%m_%d_%I_%M_%p").log
./run-bahmni.sh 1
docker ps >> log.txt

