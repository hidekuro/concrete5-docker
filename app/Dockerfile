FROM php:7-fpm-alpine
MAINTAINER hidekuro

# agent user
ARG AGENT_UID=1000
RUN adduser -D -H -s /bin/sh -u ${AGENT_UID} c5agent

# setup php
COPY ./php/php.ini /usr/local/etc/php/php.ini
COPY ./php-fpm/www.conf /usr/local/etc/php-fpm.d/zzz-www.conf

RUN apk --no-cache add \
  curl-dev \
  libmcrypt-dev \
  freetype-dev \
  libjpeg-turbo-dev \
  libpng-dev \
  libxml2-dev \
  zlib-dev \
  && NPROC=$(grep -c ^processor /proc/cpuinfo 2>/dev/null || 1) \
  && docker-php-ext-install -j${NPROC} \
    curl \
    dom \
    mbstring \
    mcrypt \
    pdo \
    pdo_mysql \
    simplexml \
    zip \
  && docker-php-ext-configure gd \
    --with-freetype-dir=/usr/include/ \
    --with-jpeg-dir=/usr/include/ \
    --with-png-dir=/usr/include/ \
  && docker-php-ext-install -j${NPROC} gd \
  && mkdir -p /var/run/php-fpm \
  && chown c5agent:c5agent /var/run/php-fpm

# download concrete5
ARG C5_FILE_REV=93074

RUN mkdir -p /var/www \
  && curl -sSL -o /tmp/concrete5.zip http://www.concrete5.org/download_file/-/view/${C5_FILE_REV}/ \
  && unzip -q /tmp/concrete5.zip -d /var/www \
  && rm -f /tmp/concrete5.zip \
  && mv /var/www/concrete* /var/www/concrete5 \
  && chown -R c5agent:c5agent /var/www/concrete5 \
  && chmod -R 700 /var/www/concrete5

VOLUME ["/var/run/php-fpm"]
VOLUME ["/var/www/concrete5"]
