#!/bin/bash

# We don't care about exposed environment variables, it just demo repository!

# install all dependencies veforee creating cache, so that we can optimize autoloader
composer install

# laravel optimizations
php artisan key:generate | echo "key:generate already exist"
php artisan optimize:clear | echo "No cache need to clear"
php artisan storage:link | echo "storage:link alrady exist"
php artisan config:clear
php artisan route:clear
php artisan cache:clear

# composer install for production dependencies only
composer install --optimize-autoloader --no-dev

# re-create cache
php artisan optimize
