#!/bin/bash

# Compilation Leptonica from source
# cd ${LEP_SRC_DIR}
# autoreconf -vi && ./autobuild && ./configure && make
# checkinstall -D --install=no -y --pakdir=${PKG_DIR} --nodoc --pkgname=leptonica-latest

wget "${LEP_TAR}"
tar xvf "${LEP_VER}".tar.gz
cd leptonica* && autoreconf -vi && ./autobuild && ./configure && make
checkinstall -D --install=no -y --pakdir=${PKG_DIR} --nodoc --pkgname=leptonica-latest
