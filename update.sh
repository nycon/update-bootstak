apt install -y software-properties-common
add-apt-repository universe
add-apt-repository -yu ppa:ondrej/php
apt-get install php8.2 php8.2-xml libapache2-mod-php8.2 php8.2-fpm php8.2-curl php8.2-mbstring php8.2-ldap php8.2-tidy php8.2-zip php8.2-gd php8.2-mysql git
apt purge '^php7.4.*'
apt-get autoremove --purge php7.4
apt-get autoremove --purge php7.4-common
a2enmod php8.2
git pull origin release
composer install --no-dev
php artisan migrate
