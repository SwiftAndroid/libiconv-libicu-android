libiconv-libicu-android
=======================

## Swift android instructions

Follow the original instructions, but instead of step (3), run ./build-android.sh instead


## Original instructions

Port of libiconv and libicu to Android

You will need NDK r10e, curl, autoconf, automake, libtool, and git installed.

There are no sources and no patches - everything is done with magical build scripts:

(1) Make sure "which ndk-build" shows the correct version to build from

(2) The scripts assume NDK/toolchain/... version 4.9. If otherwise, edit all the *.sh to
    change GCCVER=4.9 as desired.

(3) Run "./build.sh" and enjoy!

(4) Don't forget to strip them, because they are huge with debug info included.

If you need libintl, you may download it here:
https://github.com/pelya/commandergenius/tree/sdl_android/project/jni/intl
