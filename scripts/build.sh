#!/bin/bash


php artisan optimize:clear | echo "No cache need to clear"

# install dependencies
composer install --optimize-autoloader --no-dev
php artisan storage:link | echo "storage:link alrady exist"
php artisan config:clear
php artisan route:clear
php artisan cache:clear
# php artisan queue:flush | echo "ignore error queue:flush"

# re-create cache
php artisan optimize
