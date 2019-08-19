#!/usr/env bash

set -e

dir=$(cd `dirname $0`;pwd)

if [ -f ${dir}/app/config/my.php ]; then
    echo -en "\033[31m"
    echo "Installed already, if you intend to re-install, you should remove config/my.php manually and visit /index.php"
    echo -en "\033[0m"
    exit 1
fi

docker-compose up -d
docker-compose exec phpfpm chown www-data:www-data /var/www/html
decker-compose exec -u www-data phpfpm mkdir /tmp/session

echo -en "\033[32m"
echo Installed successfully. Please visit \`/index.php\` to complete the installation
echo -en "\033[0m"
