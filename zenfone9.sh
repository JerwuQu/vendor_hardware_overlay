#!/bin/sh
set -e
./build/build.sh Asus/Zenfone9
mv build/treble-overlay-asus-zenfone9.apk magisk-module-root/system/product/overlay
cd magisk-module-root
zip ../magisk-zenfone9.zip -r . 
cd ..
