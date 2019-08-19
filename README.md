# Docker for zentao

Just run `./install.sh`, everything should work out.

## Install

- modify file permisions

chown -R www-data:www-data /var/www/html

- mkdir for session

sudo -u www-data mkdir /tmp/session

## Upgrade

1. Download the lastest zip
2. unzip the zip
3. copy -f unzipped/* app/
4. Visit `/upgrade.php`(maybe rm config/my.php first)

## Reinstall

1. `rm app/config/my.php`
2. Visit `/index.php`


