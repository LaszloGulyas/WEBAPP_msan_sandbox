#!/bin/bash

CONTAINER_NAME=$1
if [ $(docker ps | grep -o $CONTAINER_NAME | wc -l) -gt 0 ];
	then docker stop $CONTAINER_NAME;echo "container stopped";
	else echo "no container found";
fi
