FROM naukri/phalcon
COPY default.conf /etc/nginx/sites-enabled
COPY storepost.php /var/www/html
EXPOSE 80
EXPOSE 443
