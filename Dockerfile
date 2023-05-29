ARG PHP_VERSION=8.1
FROM us-docker.pkg.dev/libops-images/shared/php-build:${PHP_VERSION}-main

COPY --chown=php:php . /code/

RUN cd /code && \
    composer install && \
    rm -rf /code/.composer
