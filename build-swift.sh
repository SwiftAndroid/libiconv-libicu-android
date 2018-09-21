#! /usr/bin/env sh
SKIP_HARFBUZZ=1 SHARED_ICU=1 SKIP_ICONV=1 ARCHS='armeabi-v7a arm64-v8a' LIBSUFFIX=swift ./build.sh
