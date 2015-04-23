#!/bin/sh

docker run --privileged -t -i --rm johnelse/centos7-xenbuilder:latest "$@"
