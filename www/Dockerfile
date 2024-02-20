# Use the official PHPMyAdmin image as base
FROM php:apache

RUN docker-php-ext-install mysqli

# Install pdo is you need to use PHP PDO
RUN docker-php-ext-install pdo pdo_mysql

# Copy the contents of the host machine's database directory to the container
COPY . /var/www/html

# Expose port 80
EXPOSE 80
