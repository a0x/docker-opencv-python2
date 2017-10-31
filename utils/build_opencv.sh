#!/bin/bash
wget https://ayera.dl.sourceforge.net/project/opencvlibrary/opencv-unix/3.0.0/opencv-3.0.0.zip
unzip opencv-3.0.0.zip
mkdir opencv-3.0.0/release
cd opencv-3.0.0/release
cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local ..
make -j4 && make install
cd /root
rm -rf opencv-3.0.0
