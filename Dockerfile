# Gunakan image PHP dengan Apache untuk menjalankan backend PHP
FROM php:7.4-apache

# Install MySQL dan dependensi yang dibutuhkan
RUN apt-get update && \
    apt-get install -y mysql-server

# Aktifkan mod_rewrite untuk Apache
RUN a2enmod rewrite

# Install PHP extensions yang diperlukan
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Salin frontend dan backend ke direktori yang sesuai
COPY frontend/ /var/www/html/frontend/
COPY backend/ /var/www/html/backend/
COPY database/schema.sql /docker-entrypoint-initdb.d/

# Set direktori kerja ke frontend untuk pengembangan HTML, CSS, dan JavaScript
WORKDIR /var/www/html/frontend/

# Expose port 80 untuk akses web
EXPOSE 80

# Jalankan Apache dan MySQL
CMD service mysql start && apache2-foreground
