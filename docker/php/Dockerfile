FROM php:8.3-fpm

ARG USER_ID=1000
ARG GROUP_ID=1000

# Install system dependencies and PHP extensions
RUN apt-get update && apt-get install -y \
    libpng-dev libjpeg-dev libwebp-dev libfreetype6-dev \
    libzip-dev libonig-dev libxml2-dev git unzip supervisor && \
    docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp && \
    docker-php-ext-install pdo_mysql mbstring exif pcntl gd zip opcache && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Composer installation (using team lead's install-composer.sh)
COPY ./docker/php/install-composer.sh /tmp/
RUN chmod +x /tmp/install-composer.sh && /tmp/install-composer.sh

# Configure PHP
COPY ./docker/php/php.ini /usr/local/etc/php/conf.d/
COPY ./docker/php/opcache.ini /usr/local/etc/php/conf.d/
COPY ./docker/php/custom-php-fpm.conf /usr/local/etc/php-fpm.d/zzz-custom.conf

# Supervisor setup
RUN mkdir -p /var/log/supervisor
COPY ./docker/php/schedule-worker.conf /etc/supervisor/conf.d/
COPY ./docker/php/queue-worker.conf /etc/supervisor/conf.d/

# Application setup
WORKDIR /var/www
RUN groupadd -g ${GROUP_ID} laravel && \
    useradd -u ${USER_ID} -g laravel -m laravel && \
    chown -R laravel:laravel /var/www

USER laravel

CMD ["/usr/bin/supervisord", "-n"]