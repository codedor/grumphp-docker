FROM php:7.2-cli

RUN apt-get update -y \
     && apt-get install -y curl git unzip
RUN cd ~ \
     && curl -sS https://getcomposer.org/installer -o composer-setup.php \
     && php composer-setup.php --install-dir=/usr/local/bin --filename=composer

RUN composer global require --no-plugins --no-scripts phpro/grumphp
ENV PATH /root/.composer/vendor/bin/:$PATH

CMD ["grumphp"]
