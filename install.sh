#!/bin/bash
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y software-properties-common python-software-properties
sudo add-apt-repository ppa:mc3man/trusty-media
sudo apt-get update
sudo apt-get install -y ffmpeg gstreamer0.10-ffmpeg
sudo add-apt-repository --remove ppa:mc3man/trusty-media
sudo apt-get update
#List of Dependencies
sudo apt-get install -y yasm frei0r-plugins-dev gnutls-bin libgnutls-dev libass-dev libgsm1-dev libmp3lame-dev libopencv-dev libopenjpeg-dev libopus-dev libpulse-dev libschroedinger-dev libsoxr-dev libspeex-dev libtheora-dev libv4l-dev libvorbis-dev libvpx-dev libx264-dev libxvidcore-dev libopenal-dev libcdio-paranoia-dev

#Compilation options:
./configure --prefix=/usr --bindir=/usr/bin --datadir=/usr/share/ffmpeg --incdir=/usr/include/ffmpeg --libdir=/usr/lib/x86_64-linux-gnu/  --mandir=/usr/share/man --arch=x86_64 --optflags='-O2 -g -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector-strong --param=ssp-buffer-size=4 -grecord-gcc-switches -m64 -mtune=generic' --enable-bzlib --disable-crystalhd --enable-frei0r --enable-gnutls --enable-libass --enable-libcdio --enable-libdc1394 --disable-indev=jack --enable-libfreetype --enable-libgsm --enable-libmp3lame --enable-openal --enable-libopencv --enable-libopenjpeg --enable-libopus --enable-libpulse --enable-libschroedinger --enable-libsoxr --enable-libspeex --enable-libtheora --enable-libvorbis --enable-libv4l2 --enable-libvpx --enable-libx264 --enable-libxvid --enable-x11grab --enable-avfilter --enable-avresample --enable-postproc --enable-pthreads --disable-static --enable-shared --enable-gpl --disable-debug --disable-stripping --shlibdir=/usr/lib/x86_64-linux-gnu/ --enable-runtime-cpudetect
