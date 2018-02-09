FROM lucidprogrammer/python3-tesseract4-base:latest as base
LABEL maintainer="Lucid Programmer"
RUN apt-get update && apt-get install -y \
    wget
RUN wget -O gdrive https://docs.google.com/uc?id=0B3X9GlR6EmbnQ0FtZmJJUXEyRTA
RUN chmod +x gdrive && \
    mv gdrive /usr/local/bin
