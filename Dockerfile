FROM php:7.4-fpm-alpine

# install pdo mysql driver
RUN docker-php-ext-install pdo_mysql

# change working directory to /var/www/
WORKDIR /var/www/

# install and set up composer
RUN php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer

# copy project content to working directory
COPY . .

# Install composer packages
RUN composer install
