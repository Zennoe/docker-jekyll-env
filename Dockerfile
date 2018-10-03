FROM debian:stretch
MAINTAINER Zennoe

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    imagemagick ffmpeg vpx-tools webp \
    ruby2.3-dev bundler git rsync ssh zlib1g-dev wget \
    && apt-get autoremove && apt-get clean
    
RUN cd /usr/local/bin && \
    wget https://storage.googleapis.com/downloads.webmproject.org/releases/webp/libwebp-1.0.0-linux-x86-64.tar.gz && \
    tar xzf libwebp-1.0.0-linux-x86-64.tar.gz && \
    chmod -R 0777 libwebp-1.0.0-linux-x86-64/
    mv libwep-1.0.0-linux-x86-64/bin/* /usr/local/bin && rm -rf libwebp-1.0.0-linux-x86-64/
    
RUN gem install jekyll therubyracer execjs html-proofer minima jekyll-feed jekyll-minifier jekyll-paginate jekyll-sitemap tzinfo-data
