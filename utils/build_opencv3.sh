wget https://ayera.dl.sourceforge.net/project/opencvlibrary/opencv-unix/3.0.0/opencv-3.0.0.zip
unzip opencv-3.0.0.zip
cd opencv-3.0.0
mkdir release
cd opencv-3.0.0/release
cmake
make && make install
cd ../../
rm -rf opencv-3.0.0
