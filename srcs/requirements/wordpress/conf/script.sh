sed -i 's|listen = /run/php/php7.3-fpm.sock|listen = 0.0.0.0:9000|g' /etc/php/7.3/fpm/pool.d/www.conf;
if [ ! -d "/run/php" ]; then
mkdir /run/php/;
fi
if [ ! -f "/var/www/html/wp-config.php" ]; then
cd /tmp \
    && curl -LO https://wordpress.org/latest.tar.gz && tar xzvf latest.tar.gz \
    && cp -r /tmp/wordpress/* /var/www/html/ \
    && cp /wp-config.php /var/www/html/ \
    && chown -R www-data:www-data /var/www/html/;
fi
php-fpm7.3 -F -R
