ARG PHP_VERSION=7.4

FROM ubuntu:20.04
RUN apt update
RUN export DEBIAN_FRONTEND=noninteractive && apt install -yqq php-$PHP_VERSION
RUN apt install nginx \
    vim \
	php-fpm -y
RUN apt purge apache2 -y
COPY confs/nginx/default /etc/nginx/sites-available/default
COPY confs/fpm/www.conf /etc/php/$PHP_VERSION/fpm/pool.d/www.conf
COPY confs/fpm/php.ini /etc/php/$PHP_VERSION/fpm/php.ini
COPY scripts /scripts
COPY app /var/www/html/app
RUN bash /scripts/nginx_default_gen.sh
