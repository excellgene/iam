FROM php:8.1-apache

# install classic tools
RUN apt update -y && apt install -y \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    unixodbc \
    sqlite3 \
    npm \
    vim \
    zip \
    unzip

# install php-extensions
RUN docker-php-ext-install pdo pdo_mysql \
    # mbstring 
    exif pcntl bcmath gd json tokenizer xml


# install project dependencies

# config apache

# web user
