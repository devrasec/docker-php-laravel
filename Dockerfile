FROM nmcteam/php56
MAINTAINER luiscon26@gmail.com

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php

# Move Composer to executable path
RUN chmod +x composer.phar && mv composer.phar /usr/local/bin/composer

# Install Laravel installer
RUN composer global require "laravel/installer=~1.1"

# Place Laravel installer available in the PATH.
RUN echo "export PATH=$PATH:$HOME/.composer/vendor/bin" >> /root/.bashrc