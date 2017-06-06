FROM php:7.1.2-fpm
MAINTAINER Felix Huang<yelfivehuang@gmail.com>

RUN apt-get update && \
    apt-get install -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    libpng12-dev \
    libcurl4-openssl-dev \
    libicu-dev \
    && docker-php-ext-install -j$(nproc) iconv mcrypt \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install intl pdo pdo_mysql zip
    
EXPOSE 9000
CMD ["php-fpm"]
