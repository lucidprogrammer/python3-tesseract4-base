FROM ubuntu:16.04
LABEL maintainer="Lucid Programmer"
RUN apt-get update && apt-get install -y \
  	autoconf \
  	autoconf-archive \
  	automake \
  	build-essential \
  	checkinstall \
    libreadline-gplv2-dev \
    libncursesw5-dev \
    libssl-dev \
    libsqlite3-dev \
    tk-dev \
    libgdbm-dev \
    libc6-dev \
    libbz2-dev \
  	cmake \
  	g++ \
  	git \
  	libcairo2-dev \
  	libcairo2-dev \
  	libicu-dev \
  	libicu-dev \
  	libjpeg8-dev \
  	libjpeg8-dev \
  	libpango1.0-dev \
  	libpango1.0-dev \
  	libpng12-dev \
  	libpng12-dev \
  	libtiff5-dev \
  	libtiff5-dev \
  	libtool \
  	pkg-config \
  	wget \
  	xzgv \
    zlib1g-dev

RUN mkdir /work
WORKDIR /work
# install the latest ImageMagick
RUN wget http://www.imagemagick.org/download/ImageMagick.tar.gz && \
    tar xvf ImageMagick.tar.gz && \
    cd ImageMagick-7* && \
    ./configure && \
    make && \
    make install && \
    ldconfig /usr/local/lib

ENV SCRIPTS_DIR /home/scripts
ENV PKG_DIR /work/pkg
ENV BASE_DIR /home/workspace
ENV LEP_REPO_URL https://github.com/DanBloomberg/leptonica.git
ENV LEP_SRC_DIR ${BASE_DIR}/leptonica
ENV TES_REPO_URL https://github.com/tesseract-ocr/tesseract.git
ENV TES_SRC_DIR ${BASE_DIR}/tesseract
ENV TESDATA_REPO_URL https://github.com/tesseract-ocr/tessdata_best.git
ENV TESDATA_SRC_DIR ${BASE_DIR}/tessdata
ENV TESSDATA_PREFIX /usr/local/share/tessdata

RUN mkdir ${SCRIPTS_DIR}
RUN mkdir ${PKG_DIR}
RUN mkdir ${BASE_DIR}
RUN mkdir ${TESSDATA_PREFIX}

COPY ./container-scripts/* ${SCRIPTS_DIR}/
RUN chmod +x ${SCRIPTS_DIR}/*
RUN ${SCRIPTS_DIR}/repos_clone.sh
RUN ${SCRIPTS_DIR}/compile_leptonica.sh
RUN ${SCRIPTS_DIR}/compile_tesseract.sh



ENV PATH /usr/local/bin:$PATH

# http://bugs.python.org/issue19846
# > At the moment, setting "LANG=C" on a Linux system *fundamentally breaks Python 3*, and that's not OK.
ENV LANG C.UTF-8

# runtime dependencies
RUN wget https://www.python.org/ftp/python/3.6.4/Python-3.6.4.tgz && \
    tar xzf Python-3.6.4.tgz && \
    cd Python-3.6.4 && \
    ./configure --enable-optimizations && \
    make altinstall
RUN apt-get install -y libenchant1c2a libmagickwand-dev
RUN echo "alias pip=pip3.6">>"$HOME"/.bashrc && \
    echo "alias python=python3.6">>"$HOME"/.bashrc && \
    rm -rf /work/*.*
