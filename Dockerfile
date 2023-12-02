
# Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
# Click nbfs://nbhost/SystemFileSystem/Templates/Other/Dockerfile to edit this template

# Use an official PHP runtime as a parent image
FROM php:8.2-apache

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Copy the contents of the current directory to /var/www/html in the container
COPY index.php ./
COPY database.php ./
COPY login.php ./
COPY logout.php ./
COPY admin.php ./
COPY edit.php ./
COPY process.php ./
COPY register.php ./
COPY functions.php ./
COPY update.php ./
COPY search.php ./
COPY delete.php ./
COPY docker-compose.yml ./

# Install any needed packages including mysqli
RUN apt-get update && apt-get install -y \
    libicu-dev \
    && docker-php-ext-install -j$(nproc) pdo_mysql mysqli intl

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run Apache when the container launches
CMD ["apache2-foreground"]






