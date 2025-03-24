FROM php:8.3-fpm

# Установим system dependencies и PHP расширения
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip \
    git \
    curl && \
    docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

# Установим Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Укажем рабочую директорию
WORKDIR /var/www

# Даем права на запись
RUN chown -R www-data:www-data /var/www && chmod -R 755 /var/www

CMD ["php-fpm"]

