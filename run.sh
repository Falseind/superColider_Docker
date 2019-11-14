#! /bin/sh
#
# run.sh
# Copyright (C) 2019 messis <messis@x1pax>
#
# Distributed under terms of the MIT license.
#

## --ulimit rtprio=95 --ulimit memlock=-1
docker run -ti --rm -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=${DISPLAY} -v /dev/shm:/dev/shm --privileged supercollider
