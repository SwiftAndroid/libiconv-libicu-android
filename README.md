libiconv-libicu-android
=======================

Port of libiconv and libicu to Android

You will need NDK r16, curl, autoconf, automake, libtool, and git installed.

There are no sources and no patches - everything is done with magical build scripts,
just run build-swift.sh and enjoy.
Don't forget to strip them, because they are huge with debug info included.

There is no mips architecture, because there are very few devices using this architecture in the wild.

If you need libintl, you may download it here:
https://github.com/pelya/commandergenius/tree/sdl_android/project/jni/intl
