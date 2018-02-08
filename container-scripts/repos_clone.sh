#!/bin/bash

# Downloading source code
# Leptonica
# RUN git ls-remote ${LEP_REPO_URL} HEAD
# git clone ${LEP_REPO_URL} ${LEP_SRC_DIR} --depth 1
# Tesseract
# RUN git ls-remote ${TES_REPO_URL} HEAD
git clone ${TES_REPO_URL} ${TES_SRC_DIR} --depth 1


# lets have the datafiles

# SPECIAL DATA FILES
# osd	Orientation and script detection
wget -O ${TESSDATA_FAST}/osd.traineddata https://github.com/tesseract-ocr/tessdata/raw/3.04.00/osd.traineddata
# equ	Math / equation detection
wget -O ${TESSDATA_FAST}/equ.traineddata https://github.com/tesseract-ocr/tessdata/raw/3.04.00/equ.traineddata

# Updated Data Files for Version 4.00 (September 15, 2017)  -- FAST as default
# https://github.com/tesseract-ocr/tesseract/wiki/Data-Files
# https://github.com/tesseract-ocr/tessdata_fast
# eng & chinese
wget -O ${TESSDATA_FAST}/eng.traineddata https://github.com/tesseract-ocr/tessdata_fast/raw/master/eng.traineddata
wget -O ${TESSDATA_FAST}/chi_sim.traineddata https://github.com/tesseract-ocr/tessdata_fast/raw/master/chi_sim.traineddata
wget -O ${TESSDATA_FAST}/chi_sim_vert.traineddata https://github.com/tesseract-ocr/tessdata_fast/raw/master/chi_sim_vert.traineddata
wget -O ${TESSDATA_FAST}/chi_tra.traineddata https://github.com/tesseract-ocr/tessdata_best/fast/master/chi_tra.traineddata
wget -O ${TESSDATA_FAST}/chi_tra_vert.traineddata https://github.com/tesseract-ocr/tessdata_fast/raw/master/chi_tra_vert.traineddata



# SPECIAL DATA FILES
# osd	Orientation and script detection
cp ${TESSDATA_FAST}/osd.traineddata ${TESSDATA_BEST}/osd.traineddata
cp ${TESSDATA_FAST}/equ.traineddata ${TESSDATA_BEST}/equ.traineddata
# Updated Data Files for Version 4.00 (September 15, 2017) - best
# eng & chinese
wget -O ${TESSDATA_BEST}/eng.traineddata https://github.com/tesseract-ocr/tessdata_best/raw/master/eng.traineddata
wget -O ${TESSDATA_BEST}/chi_sim.traineddata https://github.com/tesseract-ocr/tessdata_best/raw/master/chi_sim.traineddata
wget -O ${TESSDATA_BEST}/chi_sim_vert.traineddata https://github.com/tesseract-ocr/tessdata_best/raw/master/chi_sim_vert.traineddata
wget -O ${TESSDATA_BEST}/chi_tra.traineddata https://github.com/tesseract-ocr/tessdata_best/raw/master/chi_tra.traineddata
wget -O ${TESSDATA_BEST}/chi_tra_vert.traineddata https://github.com/tesseract-ocr/tessdata_best/raw/master/chi_tra_vert.traineddata

# legacy
cp ${TESSDATA_FAST}/osd.traineddata ${TESSDATA_LEGACY}/osd.traineddata
cp ${TESSDATA_FAST}/equ.traineddata ${TESSDATA_LEGACY}/equ.traineddata

wget -O ${TESSDATA_LEGACY}/eng.traineddata https://github.com/tesseract-ocr/tessdata/raw/master/eng.traineddata
wget -O ${TESSDATA_LEGACY}/chi_sim.traineddata https://github.com/tesseract-ocr/tessdata/raw/master/chi_sim.traineddata
wget -O ${TESSDATA_LEGACY}/chi_tra.trainedda https://github.com/tesseract-ocr/tessdata/raw/master/chi_tra.traineddata
