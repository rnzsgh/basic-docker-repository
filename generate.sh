#!/bin/bash

# This script generates a lot of activity to test the registry

HOST=SET_HOSTNAME


for i in {1..50}; do

  docker build -t $HOST/ubuntu:$i .
  docker push $HOST/ubuntu:$i
  docker images | grep "$HOST/ubuntu:*" | awk '{print $1 ":" $2}' | xargs docker rmi

done
