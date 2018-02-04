FROM ubuntu:16.04
LABEL maintainer="Lucid Programmer"
ENV PYTHON_VERSION=3.6
# this image provides the following.
# tesseract 4.00.00alpha
# leptonica-1.74.4
# Python 3.6.4 & pip 9.0.1
RUN apt-get update && apt-get install -y software-properties-common curl && \
     add-apt-repository ppa:deadsnakes/ppa && \
     add-apt-repository -y ppa:alex-p/tesseract-ocr
RUN apt-get update && apt-get install -y tesseract-ocr python"$PYTHON_VERSION"

RUN curl https://bootstrap.pypa.io/get-pip.py | python"$PYTHON_VERSION" && \
    echo "alias python=python${PYTHON_VERSION}" >> "$HOME"/.bashrc
