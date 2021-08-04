#!/bin/bash

CONTAINER_NAME=$1
IMAGE_NAME=$2

docker build -t $IMAGE_NAME .
docker run -dit --name $CONTAINER_NAME -p 8081:8081 $IMAGE_NAME
