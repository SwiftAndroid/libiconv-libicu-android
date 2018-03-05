#!/bin/bash

#
# *** build-android.sh ***
#
# This script automates editing the libiconv and libicu source code and build
# directives to build the libraries correctly to use when building swift for
# Android. Original instructions that this script automates are available at
# https://github.com/apple/swift/blob/4bf6f5475ddf5c9ff4a7e383bac41c8a0464cd90/docs/Android.md#adding-swift-suffix-to-icu-libraries
#

set -e

echo "warning: this script assumes it's running from the root of the libiconv-libicu-android directory"

# Create armeabi-v7a dir
mkdir armeabi-v7a && cd armeabi-v7a
tar xvf ../icu4c-55_1-src.tgz
cd ..

# Patch icu configure file
patch -i swift-android-source-patches/build.patch 

# Patch build.sh file
cd armeabi-v7a/icu/source/
patch -i ../../../swift-android-source-patches/icu-configure.patch
cd ../../..

# 🎉 Run build.sh, with the edited sources
./build.sh

echo "Done building 🎉🎉🎉"
echo "Check out the armeabi-v7a directory."
