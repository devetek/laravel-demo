#!/bin/bash

# We don't care about exposed environment variables, it just demo repository!

php artisan key:generate | echo "key:generate already exist"

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
