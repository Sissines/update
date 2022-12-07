#! /bin/bash
touch /etc/apt/security.sources.list
echo "deb http://security.debian.org/debian-security bullseye-security main" >> /etc/apt/security.sources.list
echo "deb-src http://security.debian.org/debian-security bullseye-security main" >> /etc/apt/security.sources.list
chmod +x /update/update.sh
echo "0 0 15 * * root /root/script/update.sh" >> /etc/crontab
