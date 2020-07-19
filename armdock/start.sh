#!/bin/bash

echo "give me a bottle of rum!"
echo "starting to build armdock"
cd arm
docker-compose up -d
sleep 5
echo "armdock was sucessfully built!"
