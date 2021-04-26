#!/bin/bash
set -x
#set -n

yum update -y
yum -y install git

username="ec2-user"

## install java 1.8
yum -y remove java-1.7.0-openjdk*
yum -y install java-1.8.0-openjdk*

## install docker
amazon-linux-extras install docker
yum install docker -y
usermod -a -G docker $username
service docker start

# install docker-compose
curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

sleep 3


#free the memory
freeMemory()
{
  sh -c 'echo 1 >/proc/sys/vm/drop_caches'
  sh -c 'echo 2 >/proc/sys/vm/drop_caches'
  sh -c 'echo 3 >/proc/sys/vm/drop_caches'
}


freeMemory

su $username
cd ~
git clone git@github.com:uuboyscy/exweb.git
sleep 5
#free the memory
freeMemory

#setup swap space
dd if=/dev/zero of=/swapfile bs=1M count=1024
sleep 10
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
sleep 10
echo "/swapfile swap swap defaults 0 0" >> /etc/fstab

