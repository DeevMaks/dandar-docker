./artisan
cd
pwd
mc
cd /var/www/html_nakanune.ru/adm02
php artisan config:clear && php artisan route:clear && php artisan view:clear && php artisan cache:clear && php artisan queue:restart
mysql WwwNakanuneRu < wwwNakanuneRu_dev0.sql
