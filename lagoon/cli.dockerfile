FROM amazeeio/php:7.4-cli-drupal

COPY composer.* /app/
RUN COMPOSER_MEMORY_LIMIT=-1 composer install --no-dev
COPY . /app

# Define where the Drupal Root is located
ENV WEBROOT=web
