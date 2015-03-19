#!/bin/sh

WORKING_DIR=$PWD

C=/usr/groups/cache
L=/usr/groups/linux

cd $C
cd $L
cd $WORKING_DIR

docker run --privileged -v $C:$C -v $L:$L -t -i --rm johnelse/centos7-xenbuilder:latest "$@"
