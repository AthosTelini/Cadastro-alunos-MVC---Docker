FROM php:8.1-apache

# Instala a extensão do PostgreSQL
RUN apt-get update && apt-get install -y \
    libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql

# Habilita o mod_rewrite do Apache
RUN a2enmod rewrite

# Copia a configuração do Virtual Host que aponta para a pasta /public
COPY php/000-default.conf /etc/apache2/sites-available/000-default.conf