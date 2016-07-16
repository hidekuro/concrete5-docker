FROM php:7-fpm
MAINTAINER hidekuro

RUN curl -sL http://www.debian.or.jp/using/apt/sources.list.http.ftp.jp.debian.org > /etc/apt/sources.list \
  && apt-get update

RUN apt-get install -y \
    libcurl4-openssl-dev \
    libxml2-dev \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    libpng12-dev

RUN docker-php-ext-install -j$(nproc) \
    curl \
    dom \
    mbstring \
    mcrypt \
    pdo \
    pdo_mysql \
    simplexml \
    zip \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd

VOLUME ["/var/run/php-fpm"]

RUN useradd -m -s /bin/bash -u 1000 c5agent \
  && mkdir -p /var/run/php-fpm \
  && chown c5agent:c5agent /var/run/php-fpm

COPY ./php/php.ini /usr/local/etc/php/php.ini
COPY ./php-fpm/www.conf /usr/local/etc/php-fpm.d/zzz-www.conf
