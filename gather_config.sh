#!/usr/bin/env bash
# RaspberryPi0
ssh -p 32002 -T pi@giancarlobonansea.homeip.net "\
uname -a > /home/pi/clusterednode-config/rpi0-uname.txt && \
pm2 list > /home/pi/clusterednode-config/rpi0-api-pm2-list.txt && \
pm2 prettylist > /home/pi/clusterednode-config/rpi0-pm2-prettylist.json && \
sudo cp /etc/sysctl.conf /home/pi/clusterednode-config/rpi0-sysctl.conf && \
sudo cp /etc/stunnel/redis-server.conf /home/pi/clusterednode-config/rpi0-stunnel-redis-server.conf && \
sudo cp /etc/default/stunnel /home/pi/clusterednode-config/rpi0-default-stunnel && \
sudo cp /etc/init.d/stunnel /home/pi/clusterednode-config/rpi0-initd-stunnel && \
sudo cp /etc/redis/6379.conf /home/pi/clusterednode-config/rpi0-redis-6379.conf && \
sudo cp /etc/redis/6378.conf /home/pi/clusterednode-config/rpi0-redis-6378.conf && \
sudo cp /etc/redis/6377.conf /home/pi/clusterednode-config/rpi0-redis-6377.conf && \
sudo cp /etc/redis/sentinel.conf /home/pi/clusterednode-config/rpi0-redis-sentinel.conf"
scp -r pi@raspberrypi0:~/clusterednode-config/* ./rpi0/
# RaspberryPi1
ssh -p 32003 -T pi@giancarlobonansea.homeip.net "\
uname -a > /home/pi/clusterednode-config/rpi1-uname.txt && \
sudo cp /etc/sysctl.conf /home/pi/clusterednode-config/rpi1-sysctl.conf && \
sudo cp /etc/stunnel/redis-server.conf /home/pi/clusterednode-config/rpi1-stunnel-redis-server.conf && \
sudo cp /etc/default/stunnel /home/pi/clusterednode-config/rpi1-default-stunnel && \
sudo cp /etc/init.d/stunnel /home/pi/clusterednode-config/rpi1-initd-stunnel && \
sudo cp /etc/redis/6379.conf /home/pi/clusterednode-config/rpi1-redis-6379.conf && \
sudo cp /etc/redis/6378.conf /home/pi/clusterednode-config/rpi1-redis-6378.conf && \
sudo cp /etc/redis/6377.conf /home/pi/clusterednode-config/rpi1-redis-6377.conf && \
sudo cp /etc/redis/sentinel.conf /home/pi/clusterednode-config/rpi1-redis-sentinel.conf"
scp -r pi@raspberrypi1:~/clusterednode-config/* ./rpi1/
# RaspberryPi2
ssh -p 32004 -T pi@giancarlobonansea.homeip.net "\
uname -a > /home/pi/clusterednode-config/rpi2-uname.txt && \
pm2 list > /home/pi/clusterednode-config/rpi2-api-pm2-list.txt && \
pm2 show clusteredAPInode > /home/pi/clusterednode-config/rpi2-api-pm2-show.txt && \
pm2 prettylist > /home/pi/clusterednode-config/rpi2-pm2-prettylist.json && \
sudo cp /etc/sysctl.conf /home/pi/clusterednode-config/rpi2-sysctl.conf && \
sudo cp /etc/stunnel/redis-client.conf /home/pi/clusterednode-config/rpi2-stunnel-redis-client.conf && \
sudo cp /etc/default/stunnel /home/pi/clusterednode-config/rpi2-default-stunnel"
scp -r pi@raspberrypi2:~/clusterednode-config/* ./rpi2/
# RaspberryPi3
ssh -p 32005 -T pi@giancarlobonansea.homeip.net "\
uname -a > /home/pi/clusterednode-config/rpi3-uname.txt && \
pm2 list > /home/pi/clusterednode-config/rpi3-api-pm2-list.txt && \
pm2 show clusteredAPInode > /home/pi/clusterednode-config/rpi3-api-pm2-show.txt && \
pm2 prettylist > /home/pi/clusterednode-config/rpi3-pm2-prettylist.json && \
sudo cp /etc/sysctl.conf /home/pi/clusterednode-config/rpi3-sysctl.conf && \
sudo cp /etc/stunnel/redis-client.conf /home/pi/clusterednode-config/rpi3-stunnel-redis-client.conf && \
sudo cp /etc/default/stunnel /home/pi/clusterednode-config/rpi3-default-stunnel"
scp -r pi@raspberrypi3:~/clusterednode-config/* ./rpi3/
# RaspberryPi4
ssh -p 32006 -T pi@giancarlobonansea.homeip.net "\
uname -a > /home/pi/clusterednode-config/rpi4-uname.txt && \
sudo cp /etc/nginx/nginx.conf /home/pi/clusterednode-config/rpi4-nginx.conf && \
sudo cp /etc/nginx/snippets/self-signed.conf /home/pi/clusterednode-config/rpi4-self-signed.conf && \
sudo cp /etc/nginx/snippets/ssl-params.conf /home/pi/clusterednode-config/rpi4-ssl-params.conf && \
pm2 list > /home/pi/clusterednode-config/rpi4-hdr-pm2-list.txt && \
pm2 show clusteredHDRnode > /home/pi/clusterednode-config/rpi4-hdr-pm2-show.txt && \
pm2 prettylist > /home/pi/clusterednode-config/rpi4-pm2-prettylist.json && \
sudo cp /etc/sysctl.conf /home/pi/clusterednode-config/rpi4-sysctl.conf && \
sudo cp /etc/ssl/certs/dhparam.pem /home/pi/clusterednode-config/rpi4-dhparam.pem && \
sudo cp /etc/ssl/certs/nginx-selfsigned.crt /home/pi/clusterednode-config/rpi4-nginx-selfsigned.crt && \
sudo cp /etc/ssl/private/nginx-selfsigned.key /home/pi/clusterednode-config/rpi4-nginx-selfsigned.key"
scp -r pi@raspberrypi4:~/clusterednode-config/* ./rpi4/
# RaspberryPi5
ssh -p 32007 -T pi@giancarlobonansea.homeip.net "\
uname -a > /home/pi/clusterednode-config/rpi5-uname.txt && \
pm2 list > /home/pi/clusterednode-config/rpi5-api-pm2-list.txt && \
pm2 show clusteredAPInode > /home/pi/clusterednode-config/rpi5-api-pm2-show.txt && \
pm2 prettylist > /home/pi/clusterednode-config/rpi5-pm2-prettylist.json && \
sudo cp /etc/sysctl.conf /home/pi/clusterednode-config/rpi5-sysctl.conf && \
sudo cp /etc/stunnel/redis-client.conf /home/pi/clusterednode-config/rpi5-stunnel-redis-client.conf && \
sudo cp /etc/default/stunnel /home/pi/clusterednode-config/rpi5-default-stunnel"
scp -r pi@raspberrypi5:~/clusterednode-config/* ./rpi5/
# RaspberryPi6
ssh -p 32008 -T pi@giancarlobonansea.homeip.net "\
uname -a > /home/pi/clusterednode-config/rpi6-uname.txt && \
pm2 list > /home/pi/clusterednode-config/rpi6-api-pm2-list.txt && \
pm2 show clusteredAPInode > /home/pi/clusterednode-config/rpi6-api-pm2-show.txt && \
pm2 prettylist > /home/pi/clusterednode-config/rpi6-pm2-prettylist.json && \
sudo cp /etc/sysctl.conf /home/pi/clusterednode-config/rpi6-sysctl.conf && \
sudo cp /etc/stunnel/redis-client.conf /home/pi/clusterednode-config/rpi6-stunnel-redis-client.conf && \
sudo cp /etc/default/stunnel /home/pi/clusterednode-config/rpi6-default-stunnel"
scp -r pi@raspberrypi6:~/clusterednode-config/* ./rpi6/
