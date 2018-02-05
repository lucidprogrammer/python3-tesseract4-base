#!/bin/bash

# Downloading source code
# Leptonica
# RUN git ls-remote ${LEP_REPO_URL} HEAD
git clone ${LEP_REPO_URL} ${LEP_SRC_DIR} --depth 1
# Tesseract
# RUN git ls-remote ${TES_REPO_URL} HEAD
git clone ${TES_REPO_URL} ${TES_SRC_DIR} --depth 1

# git clone ${TESDATA_REPO_URL} ${TESDATA_SRC_DIR} --depth 1
#
# cp ${TESDATA_SRC_DIR}/*.traineddata ${TESSDATA_PREFIX}/

wget -O ${TESSDATA_PREFIX}/osd.traineddata https://github.com/tesseract-ocr/tessdata_best/raw/master/osd.traineddata
# equ	Math / equation detection
wget -O ${TESSDATA_PREFIX}/equ.traineddata https://github.com/tesseract-ocr/tessdata_best/raw/master/equ.traineddata
# eng English
wget -O ${TESSDATA_PREFIX}/eng.traineddata https://github.com/tesseract-ocr/tessdata_best/raw/master/eng.traineddata

wget -O ${TESSDATA_PREFIX}/chi_sim.traineddata https://github.com/tesseract-ocr/tessdata_best/raw/master/chi_sim.traineddata
wget -O ${TESSDATA_PREFIX}/chi_sim_vert.traineddata https://github.com/tesseract-ocr/tessdata_best/raw/master/chi_sim_vert.traineddata
wget -O ${TESSDATA_PREFIX}/chi_tra.traineddata https://github.com/tesseract-ocr/tessdata_best/raw/master/chi_tra.traineddata
wget -O ${TESSDATA_PREFIX}/chi_tra_vert.traineddata https://github.com/tesseract-ocr/tessdata_best/raw/master/chi_tra_vert.traineddata
