#! /bin/bash
touch /etc/apt/security.sources.list
echo "deb http://security.debian.org/debian-security bullseye-security main" >> /etc/apt/security.sources.list
echo "deb-src http://security.debian.org/debian-security bullseye-security main" >> /etc/apt/security.sources.list
mkdir /root/script
touch /root/script/update.sh
echo "#! /bin/bash" >> /root/script/update.sh
echo "apt update -y" >> /root/script/update.sh
echo "apt-get upgrade -o Dir::Etc::SourceList=/etc/apt/security.sources.list -y" >> /root/script/update.sh
chmod +x /root/script/update.sh
echo "0 0 15 * * root /root/script/update.sh" >> /etc/crontab
