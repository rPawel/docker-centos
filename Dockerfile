# Runnable base
FROM centos:5

# Basic config
ADD setup.sh /tmp/setup.sh

RUN \
 echo "LANG=\"en_GB.UTF-8\"" > /etc/sysconfig/i18n \
 && yum -q -y update \
 && yum -q -y upgrade \
 && yum install -y -q vim git subversion curl unzip wget cron \
 && /bin/bash /tmp/setup.sh && rm -f /tmp/setup.sh

