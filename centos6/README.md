Build the Docker image:

```
docker build -t centos6-xenbuilder .
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

Maybe you want to make modifications to one of the components, e.g. xapi.

```
cd ..
git clone git://github.com/xapi-project/xen-api
cd xen-api
...make modifications here...
cd ../buildroot
planex-pin SPECS/xapi.spec /home/builder/xen-api#master
MOCK="planex-cache -v" make
```
