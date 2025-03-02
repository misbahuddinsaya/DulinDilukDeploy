#!/bin/bash
# Install Composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# Install dependencies
composer install --no-dev --prefer-dist

# Set environment
php artisan key:generate
php artisan config:cache
php artisan route:cache
php artisan view:cache
