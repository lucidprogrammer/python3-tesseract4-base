#!/bin/bash

# Compilation Tesseract
cd ${TES_SRC_DIR}
./autogen.sh && ./configure
LDFLAGS="-L/usr/local/lib" CFLAGS="-I/usr/local/include" make
make
checkinstall -D --install=no -y --pakdir=${PKG_DIR} --nodoc --pkgname=tesseract-latest
cd ${TES_SRC_DIR}/training
make
checkinstall -D --install=no -y --pakdir=${PKG_DIR} --nodoc --pkgname=tesseract-training-latest
