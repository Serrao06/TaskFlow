FROM php:8.3-fpm

# Install system dependencies
RUN apt-get update && apt-get install -y libpq-dev libzip-dev zip unzip \
    && docker-php-ext-install pdo pdo_mysql

# Set working directory
WORKDIR /var/www

# Copy existing project files
COPY . .

# Expose port
EXPOSE 9000
