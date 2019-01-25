FROM debian:stretch
MAINTAINER Zennoe

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    imagemagick ffmpeg vpx-tools \
    ruby2.3-dev bundler git rsync ssh zlib1g-dev wget \
    && apt-get autoremove && apt-get clean
    
RUN cd /tmp && \
    wget https://storage.googleapis.com/downloads.webmproject.org/releases/webp/libwebp-1.0.2-linux-x86-64.tar.gz -P /tmp && \
    tar xzf /tmp/libwebp-1.0.2-linux-x86-64.tar.gz -C /tmp && \
    chmod -R 0777 /tmp/libwebp-1.0.2-linux-x86-64/ && \
    mv /tmp/libwep-1.0.2-linux-x86-64/bin/* /usr/local/bin && rm -rf /tmp/libwebp-1.0.2-linux-x86-64/
    
RUN gem install jekyll therubyracer execjs html-proofer minima jekyll-feed jekyll-minifier jekyll-paginate jekyll-sitemap tzinfo-data
