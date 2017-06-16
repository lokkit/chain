FROM jsurf/rpi-raspbian
MAINTAINER Andreas Schmid <ikeark@gmail.com>

ENV QEMU_EXECVE 1
ENV DEBIAN_FRONTEND noninteractive

# update the raspbian
RUN apt-get update && apt-get upgrade --yes

# install debian toolchain
RUN apt-get install --yes --no-install-recommends devscripts equivs build-essential wget dh-systemd golang

# add current source
VOLUME ["/out"]
VOLUME ["/out/src"]
WORKDIR /out/src
