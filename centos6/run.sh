#!/bin/sh

docker run --privileged -t -i --rm centos6-xenbuilder:latest "$@"
