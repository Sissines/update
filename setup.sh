#! /bin/bash
touch /etc/apt/security.sources.list
echo "deb http://security.debian.org/debian-security bullseye-security main" >> /etc/apt/security.sources.list
echo "deb-src http://security.debian.org/debian-security bullseye-security main" >> /etc/apt/security.sources.list
mkdir /root/update
mkdir /root/update/logs
chmod +x /root/update/update.sh
echo "30 * * * * root /root/script/update.sh" >> /etc/crontab
