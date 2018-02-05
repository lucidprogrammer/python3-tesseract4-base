
# Overview

This image provides the following
     ImageMagick-7.0.7-22,
     leptonica-1.74.4 \ (or top of the trunk)
     tesseract 4.00.00alpha (LSTM version) \ (or top of the trunk)
     latest training (best) (all available)\
     Python 3.6.4 \
     and pip 9.0.1
     with base ubuntu 16.04.

Not a production env, meant for python dev on ocr projects.(this is a large image!!)

# Usage
'''
cd pythonworkdir
docker run -it -v $(pwd):/work lucidprogrammer/python3-tesseract4-base bash
//python and pip commands point to the 3.6.4 versions.

'''
