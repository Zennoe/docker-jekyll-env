FROM debian:stretch
MAINTAINER Zennoe

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    webp imagemagick \
    ruby2.3-dev bundler git rsync ssh zlib1g-dev \
    && apt-get clean
    
RUN gem install jekyll therubyracer execjs
