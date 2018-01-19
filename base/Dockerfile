FROM debian:stretch as base

ENV LANG C.UTF-8

RUN apt-get update && \
  apt-get install -y \
    git \
    curl \
    xz-utils \
    libgmp-dev \
    build-essential \
    libz-dev
