#! /bin/bash
touch /etc/apt/security.sources.list
echo "deb http://security.debian.org/debian-security bullseye-security main" >> /etc/apt/security.sources.list
echo "deb-src http://security.debian.org/debian-security bullseye-security main" >> /etc/apt/security.sources.list
mkdir /root/script
touch /root/script/update.sh
echo "#! /bin/bash" >> /root/script/update.sh
echo "apt update -y | awk '{ print strftime("[%Y-%m-%d %H:%M:%S]"), $0 }' > update-"$(date +%H:%M:%S)".log" >> /root/script/update.sh
echo "apt-get upgrade -o Dir::Etc::SourceList=/etc/apt/security.sources.list -y | awk '{ print strftime("[%Y-%m-%d %H:%M:%S]"), $0 }' > update-"$(date +%H:%M:%S)".log" >> /root/script/update.sh
chmod +x /root/script/update.sh
echo "30 * * * * root /root/script/update.sh" >> /etc/crontab
