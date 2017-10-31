FROM python:2.7.14
MAINTAINER Alvin Qi<peng.edy@gmail.com>

# Aliyun Mirrors
COPY ./utils/setup_aliyun_mirror_jessie.sh /root/
RUN /root/setup_aliyun_mirror_jessie.sh

# Setup Timezone
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

# Setup LANG
ENV LANG zh_CN.utf8

# System Packages
RUN apt-get update && apt-get install -y \
    wget\
    curl\
    build-essential\
    gcc \
    cmake \
    unzip \
    libenchant1c2a \
    libavformat-dev \
    libavcodec-dev \
    libavfilter-dev \
    libswscale-dev \
    libjpeg-dev \
    libpng-dev \
    libtiff-dev \
    libjasper-dev \
    zlib1g-dev \
    libopenexr-dev \
    libxine2-dev \
    libeigen3-dev \
    libtbb-dev && pip install "numpy==1.13.1"

# Build OpenCV
ADD ./utils/build_opencv.sh /root/build_opencv.sh
WORKDIR /root
RUN /bin/bash /root/build_opencv.sh

# Remove Script
RUN rm /root/build_opencv.sh
