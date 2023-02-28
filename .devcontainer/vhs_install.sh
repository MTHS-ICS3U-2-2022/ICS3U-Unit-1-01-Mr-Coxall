#!/bin/bash

# update & full-upgrade
sudo apt update
sudo apt -y full-upgrade

# install prerequisites
sudo apt install ffmpeg
sudo apt-get install build-essential cmake git libjson-c-dev libwebsockets-dev
git clone https://github.com/tsl0922/ttyd.git
cd ttyd && mkdir build && cd build
cmake ..
make && sudo make install

go install github.com/charmbracelet/vhs@latest