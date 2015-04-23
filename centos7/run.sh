#!/bin/sh

docker run --privileged -t -i --rm centos7-xenbuilder:latest "$@"
