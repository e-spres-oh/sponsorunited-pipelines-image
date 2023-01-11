FROM php:8.0

RUN apt-get -y update && \
    apt-get install -y libzip-dev libicu-dev zip libfreetype6-dev libjpeg62-turbo-dev git && \
    yes | pecl install mongodb && \
    docker-php-ext-enable mongodb && \
    docker-php-ext-configure gd && \
    docker-php-ext-install -j$(nproc) gd && \
    docker-php-ext-install intl pcntl zip && \
    docker-php-ext-install bcmath && \
    docker-php-ext-install sockets
