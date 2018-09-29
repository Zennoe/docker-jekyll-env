FROM debian:stretch
MAINTAINER Zennoe

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    webp libwebp6 libwebpmux2 libwebpdemux2 imagemagick ffmpeg vpx-tools \
    ruby2.3-dev bundler git rsync ssh zlib1g-dev \
    && apt-get autoremove && apt-get clean
    
RUN gem install jekyll therubyracer execjs html-proofer minima jekyll-feed jekyll-minifier jekyll-paginate jekyll-sitemap tzinfo-data
