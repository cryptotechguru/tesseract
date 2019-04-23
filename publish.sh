#!/bin/bash
# Upload Windows exe files to https://github.com/cryptotechguru/windows-binaries/node/

VERSION=0.2.1
BUILD_TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)

echo "--------------------- Publishing Core Binaries ---------------------"
git clone https://$GH_USR:$GH_TKN@github.com/cryptotechguru/windows-binaries.git
cd windows-binaries/node && mkdir ${VERSION}
cp -f /home/travis/build/cryptotechguru/tesseract-core/build/equibit-x86_64-w64-mingw32/src/*.exe ${VERSION}
git add *
git commit -m "Tesseract binaries updated on ${BUILD_TIMESTAMP}"
git push origin master

