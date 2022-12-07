#! /bin/bash
apt update -y | awk '{ print strftime("[%Y-%m-%d %H:%M:%S]"), $0 }' > "/update/logs/update-"$(date +%B)".log"
apt upgrade -y -o Dir::Etc::SourceList=/etc/apt/security.sources.list | awk '{ print strftime("[%Y-%m-%d %H:%M:%S]"), $0 }' >> "/update/logs/update-"$(date +%B)".log"
