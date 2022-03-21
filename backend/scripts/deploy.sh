#!/bin/bash

set -eu

php artisan config:cache
php artisan migrate --force

php-fpm