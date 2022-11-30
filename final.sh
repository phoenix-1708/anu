#!/bin/bash
cd /tmp/rom

export CCACHE_DIR=/tmp/ccache
export CCACHE_EXEC=$(which ccache)
export USE_CCACHE=1
ccache -M 12G
ccache -o compression=true
ccache -z

. build/envsetup.sh
$lunch
export BUILD_USERNAME=phoenix1708
export BUILD_HOSTNAME=prototype
export TZ=Asia/Jakarta
$make -j8
