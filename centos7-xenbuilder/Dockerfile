FROM                   centos:centos7
MAINTAINER             John Else <john.else@citrix.com>

RUN    yum upgrade -y
RUN    yum install -y epel-release

# Build requirements
RUN    yum install -y \
           createrepo \
           git \
           make \
           mercurial \
           mock \
           python-argparse \
           python-setuptools \
           rpm-build \
           rpm-python \
           sudo

# Niceties
RUN    yum install -y \
           tmux \
           vim \
           wget

# Set up the builder user
RUN    useradd builder
RUN    echo "builder:builder" | chpasswd
RUN    echo "builder ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers
