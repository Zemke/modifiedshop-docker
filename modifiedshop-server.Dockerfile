FROM php:7.2
RUN docker-php-ext-install mysqli
RUN apt-get update -y && apt-get install -y curl libpng-dev libjpeg-dev libfreetype6-dev
RUN apt-get update && \
    apt-get install -y \
        zlib1g-dev
RUN docker-php-ext-install zip
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
RUN docker-php-ext-install gd

