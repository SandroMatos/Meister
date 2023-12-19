FROM php:8.2-cli

WORKDIR /var/www

RUN apt-get update && \
    apt-get install libzip-dev -y && \
    docker-php-ext-install zip

# Install Composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php --install-dir=/usr/local/bin --filename=composer && \
    php -r "unlink('composer-setup.php');"

# Create and set up the Zend Framework skeleton application
# RUN composer create-project laminas/laminas-mvc-skeleton meisters-solutions --no-interaction ||true

RUN composer create-project -s dev laminas/laminas-mvc-skeleton meisters-solutions --no-interaction ||true

WORKDIR /var/www/meisters-solutions

RUN composer update

ENTRYPOINT [ "php", "-S", "0.0.0.0:8000", "-t", "public"]