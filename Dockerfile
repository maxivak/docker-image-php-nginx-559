FROM phusion/baseimage:0.9.13
MAINTAINER Max Ivak <maxivak@gmail.com>

ENV HOME /root
ENV DOCROOT /var/www/html

# Build packages first
COPY ./packages.sh /build/packages.sh
RUN /build/packages.sh

COPY ./nginx /build/nginx
RUN /build/nginx/setup.sh

COPY ./php-fpm /build/php-fpm
RUN /build/php-fpm/setup.sh

RUN rm -rf /build

EXPOSE 80 443
