#!/bin/bash


docker run -it \
  --name limo_gazebo_humble \
  --network host \
  --ipc host \
  --workdir /Users/jisu/Documents/LIMO_GAZEBO/ws_limo_humble \
  -e DISPLAY=host.docker.internal:0 \
  -e QT_X11_NO_MITSHM=1 \
  -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
  -v /etc/localtime:/etc/localtime:ro \
  -v /Users/jisu/Documents/LIMO_GAZEBO/ws_limo_humble:/Users/jisu/Documents/LIMO_GAZEBO/ws_limo_humble:rw \
  yspark98/limo:gazebo_humble

