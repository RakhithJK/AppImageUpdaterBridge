#!/usr/bin/env bash
mkdir test_cases
wget -O test_cases/appimagetool-x86_64.AppImage "https://github.com/AppImage/AppImageKit/releases/download/continuous/appimagetool-x86_64.AppImage"


mkdir build
cd build
qmake ..
make -j$(nproc)
cd ..
mv build/tests .
rm -rf build
clear
./tests
rm -rf test_cases
rm tests
