#!/usr/bin/env bash

php artisan config:clear && php artisan route:clear && php artisan view:clear && php artisan cache:clear && php artisan queue:restart
