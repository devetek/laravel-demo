#!/bin/bash

php artisan octane:start --server=frankenphp --host=0.0.0.0 --port=${PORT} --no-interaction --log-level=debug
