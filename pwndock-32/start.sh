#!/bin/bash
echo "give me a bottle of rum!"
echo "starting to build pwndock"
cd pwn
docker-compose up -d
sleep 5
echo "pwndock was sucessfully built!"
