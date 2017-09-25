FROM ruby:2.2.8

USER root

RUN apt-get update -yqq \
 && apt-get install -yqq --no-install-recommends \
    qt5-default \
    libqt5webkit5-dev \
    libfontconfig \
    build-essential \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
