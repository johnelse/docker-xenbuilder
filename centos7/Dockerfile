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
           python-argcomplete \
           python-argparse \
           python-setuptools \
           redhat-lsb-core \
           rpm-build \
           rpm-python \
           sudo

# Install planex.
RUN    yum -y install https://xenserver.github.io/planex-release/release/rpm/el/planex-release-7-1.noarch.rpm
RUN    yum -y install planex

# Niceties
RUN    yum install -y \
           tig \
           tmux \
           vim \
           wget

# Set up the builder user
RUN    useradd builder
RUN    echo "builder:builder" | chpasswd
RUN    echo "builder ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN    usermod -G mock builder
