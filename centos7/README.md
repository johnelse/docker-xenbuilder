Build the Docker image:

```
docker build -t centos7-xenbuilder .
```

Launch a Docker container:

```
./run.sh /bin/sh
```

All further commands are run in the container.

Become the `builder` user (mock will not run as root):

```
su - builder
```

Clone buildroot and kick off a build:

```
git clone git://github.com/xenserver/buildroot
cd buildroot
./configure
make
```
