FROM php:7.4-fpm-buster
SHELL ["/bin/bash", "-oeux", "pipefail", "-c"]

ENV \
	COMPOSER_ALLOW_SUPERUSER=1 \
	COMPOSER_HOME=/composer

COPY --from=composer:2.0 /usr/bin/composer /usr/bin/composer

RUN apt-get update

RUN apt-get -y install git libicu-dev libonig-dev libzip-dev unzip locales \
	libfreetype6-dev libjpeg62-turbo-dev libpng-dev && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* && \
	locale-gen en_US.UTF-8 && \
	localedef -f UTF-8 -i en_US en_US.UTF-8 && \
	mkdir /var/run/php-fpm && \
	mkdir /var/log/php && \
	docker-php-ext-install intl pdo_mysql zip bcmath && \
	docker-php-ext-configure gd --with-freetype --with-jpeg && \
	docker-php-ext-install -j$(nproc) gd && \
	composer config -g process-timeout 3600 && \
	composer config -g repos.packagist composer https://packagist.org

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs

COPY ./infra/docker/php/php-fpm.d/zzz-www.conf /usr/local/etc/php-fpm.d/zzz-www.conf
COPY ./infra/docker/php/php.ini /usr/local/etc/php/php.ini

COPY --chown=www-data:www-data ./backend /work/backend

WORKDIR /work/backend
