
# Overview

This image provides the following
     1. ImageMagick-7.0.7-22,
     2. leptonica-1.74.2 \ (or top of the trunk)
     3. tesseract 4.00.00alpha (LSTM version) \ (or top of the trunk)
     4. latest training (best) (all available)\
     5. Python 3.6.4 \
     6. and pip 9.0.1
     7. with base ubuntu 16.04.

Not a production env, meant for python dev on ocr projects.

# Usage

```
cd pythonworkdir
docker run -it -v $(pwd):/work lucidprogrammer/python3-tesseract4-base bash
//python and pip commands point to the 3.6.4 versions.

```


/home/workspace directory has the tesseract source directory and the training scripts, if you wish to train tesseract.

/home/workspace/fast is the default training data used. Use /home/workspace/best if needed by copying .traineddata to $TESSDATA_PREFIX.
