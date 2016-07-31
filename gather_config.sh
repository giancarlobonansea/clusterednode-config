#!/usr/bin/env bash
# RaspberryPi0
echo "Exporting raspberrypi0 config files..."
ssh -p 32002 -T pi@giancarlobonansea.homeip.net "\
rm /home/pi/clusterednode-config/* && \
sudo cp /etc/hosts /home/pi/clusterednode-config/rpi0-hosts.txt && \
sudo cp /etc/network/interfaces /home/pi/clusterednode-config/rpi0-network-interfaces.txt && \
sudo cp /etc/init.d/networking /home/pi/clusterednode-config/rpi0-initd-networking.txt && \
sudo cp /etc/init.d/rng-tools /home/pi/clusterednode-config/rpi0-initd-rng_tools.txt && \
sudo cp /etc/init.d/znodesrv /home/pi/clusterednode-config/rpi0-initd-znodesrv.txt && \
sudo cp /etc/init.d/ipsec /home/pi/clusterednode-config/rpi0-initd-ipsec.txt && \
sudo cp /etc/ipsec.conf /home/pi/clusterednode-config/rpi0-ipsec.conf && \
sudo cp /etc/xl2tpd/xl2tpd.conf /home/pi/clusterednode-config/rpi0-xl2tpd-xl2tpd.conf && \
uname -a > /home/pi/clusterednode-config/rpi0-uname.txt && \
pm2 list > /home/pi/clusterednode-config/rpi0-api-pm2-list.txt && \
pm2 show pm2-logrotate > /home/pi/clusterednode-config/rpi0-logrotate-pm2-show.txt && \
pm2 prettylist > /home/pi/clusterednode-config/rpi0-pm2-prettylist.json && \
sudo cp /etc/sysctl.conf /home/pi/clusterednode-config/rpi0-sysctl.conf"
scp -r pi@raspberrypi0:~/clusterednode-config/* ./rpi0/
# RaspberryPi1
echo "Exporting raspberrypi1 config files..."
ssh -p 32003 -T pi@giancarlobonansea.homeip.net "\
rm /home/pi/clusterednode-config/* && \
sudo cp /etc/hosts /home/pi/clusterednode-config/rpi1-hosts.txt && \
sudo cp /etc/network/interfaces /home/pi/clusterednode-config/rpi1-network-interfaces.txt && \
sudo cp /etc/init.d/networking /home/pi/clusterednode-config/rpi1-initd-networking.txt && \
sudo cp /etc/init.d/rng-tools /home/pi/clusterednode-config/rpi1-initd-rng_tools.txt && \
sudo cp /etc/init.d/znodesrv /home/pi/clusterednode-config/rpi1-initd-znodesrv.txt && \
uname -a > /home/pi/clusterednode-config/rpi1-uname.txt && \
pm2 list > /home/pi/clusterednode-config/rpi1-api-pm2-list.txt && \
pm2 show pm2-logrotate > /home/pi/clusterednode-config/rpi1-logrotate-pm2-show.txt && \
pm2 prettylist > /home/pi/clusterednode-config/rpi1-pm2-prettylist.json && \
sudo cp /etc/sysctl.conf /home/pi/clusterednode-config/rpi1-sysctl.conf"
scp -r pi@raspberrypi1:~/clusterednode-config/* ./rpi1/
# RaspberryPi2
echo "Exporting raspberrypi2 config files..."
ssh -p 32004 -T pi@giancarlobonansea.homeip.net "\
rm /home/pi/clusterednode-config/* && \
sudo cp /etc/hosts /home/pi/clusterednode-config/rpi2-hosts.txt && \
sudo cp /etc/network/interfaces /home/pi/clusterednode-config/rpi2-network-interfaces.txt && \
sudo cp /etc/init.d/networking /home/pi/clusterednode-config/rpi2-initd-networking.txt && \
sudo cp /etc/init.d/rng-tools /home/pi/clusterednode-config/rpi2-initd-rng_tools.txt && \
sudo cp /etc/init.d/znodesrv /home/pi/clusterednode-config/rpi2-initd-znodesrv.txt && \
uname -a > /home/pi/clusterednode-config/rpi2-uname.txt && \
pm2 list > /home/pi/clusterednode-config/rpi2-api-pm2-list.txt && \
pm2 show clusteredAPInode > /home/pi/clusterednode-config/rpi2-api-pm2-show.txt && \
pm2 show pm2-logrotate > /home/pi/clusterednode-config/rpi2-logrotate-pm2-show.txt && \
pm2 prettylist > /home/pi/clusterednode-config/rpi2-pm2-prettylist.json && \
sudo cp /etc/sysctl.conf /home/pi/clusterednode-config/rpi2-sysctl.conf && \
sudo cp /etc/stunnel/redis-client.conf /home/pi/clusterednode-config/rpi2-stunnel-redis-client.conf && \
sudo cp /etc/default/stunnel /home/pi/clusterednode-config/rpi2-default-stunnel"
scp -r pi@raspberrypi2:~/clusterednode-config/* ./rpi2/
# RaspberryPi3
echo "Exporting raspberrypi3 config files..."
ssh -p 32005 -T pi@giancarlobonansea.homeip.net "\
rm /home/pi/clusterednode-config/* && \
sudo cp /etc/hosts /home/pi/clusterednode-config/rpi3-hosts.txt && \
sudo cp /etc/network/interfaces /home/pi/clusterednode-config/rpi3-network-interfaces.txt && \
sudo cp /etc/init.d/networking /home/pi/clusterednode-config/rpi3-initd-networking.txt && \
sudo cp /etc/init.d/rng-tools /home/pi/clusterednode-config/rpi3-initd-rng_tools.txt && \
sudo cp /etc/init.d/znodesrv /home/pi/clusterednode-config/rpi3-initd-znodesrv.txt && \
uname -a > /home/pi/clusterednode-config/rpi3-uname.txt && \
pm2 list > /home/pi/clusterednode-config/rpi3-api-pm2-list.txt && \
pm2 show clusteredAPInode > /home/pi/clusterednode-config/rpi3-api-pm2-show.txt && \
pm2 show pm2-logrotate > /home/pi/clusterednode-config/rpi3-logrotate-pm2-show.txt && \
pm2 prettylist > /home/pi/clusterednode-config/rpi3-pm2-prettylist.json && \
sudo cp /etc/sysctl.conf /home/pi/clusterednode-config/rpi3-sysctl.conf && \
sudo cp /etc/stunnel/redis-client.conf /home/pi/clusterednode-config/rpi3-stunnel-redis-client.conf && \
sudo cp /etc/default/stunnel /home/pi/clusterednode-config/rpi3-default-stunnel"
scp -r pi@raspberrypi3:~/clusterednode-config/* ./rpi3/
# RaspberryPi4
echo "Exporting raspberrypi4 config files..."
ssh -p 32006 -T pi@giancarlobonansea.homeip.net "\
rm /home/pi/clusterednode-config/* && \
sudo cp /etc/hosts /home/pi/clusterednode-config/rpi4-hosts.txt && \
sudo cp /etc/network/interfaces /home/pi/clusterednode-config/rpi4-network-interfaces.txt && \
sudo cp /etc/init.d/networking /home/pi/clusterednode-config/rpi4-initd-networking.txt && \
sudo cp /etc/init.d/rng-tools /home/pi/clusterednode-config/rpi4-initd-rng_tools.txt && \
sudo cp /etc/init.d/znodesrv /home/pi/clusterednode-config/rpi4-initd-znodesrv.txt && \
uname -a > /home/pi/clusterednode-config/rpi4-uname.txt && \
sudo cp /etc/fstab /home/pi/clusterednode-config/rpi4-fstab.txt && \
sudo cp /etc/nginx/nginx.conf /home/pi/clusterednode-config/rpi4-nginx.conf && \
sudo cp /etc/nginx/snippets/self-signed.conf /home/pi/clusterednode-config/rpi4-self-signed.conf && \
sudo cp /etc/nginx/snippets/ssl-params.conf /home/pi/clusterednode-config/rpi4-ssl-params.conf && \
pm2 show pm2-logrotate > /home/pi/clusterednode-config/rpi4-logrotate-pm2-show.txt && \
pm2 prettylist > /home/pi/clusterednode-config/rpi4-pm2-prettylist.json && \
sudo cp /etc/sysctl.conf /home/pi/clusterednode-config/rpi4-sysctl.conf && \
sudo cp /etc/ssl/certs/dhparam.pem /home/pi/clusterednode-config/rpi4-dhparam.pem && \
sudo cp /etc/ssl/certs/nginx-selfsigned.crt /home/pi/clusterednode-config/rpi4-nginx-selfsigned.crt && \
sudo cp /etc/ssl/private/nginx-selfsigned.key /home/pi/clusterednode-config/rpi4-nginx-selfsigned.key"
scp -r pi@raspberrypi4:~/clusterednode-config/* ./rpi4/
# RaspberryPi9
echo "Exporting raspberrypi9 config files..."
ssh -p 32012 -T pi@giancarlobonansea.homeip.net "\
rm /home/pi/clusterednode-config/* && \
sudo cp /etc/hosts /home/pi/clusterednode-config/rpi9-hosts.txt && \
sudo cp /etc/network/interfaces /home/pi/clusterednode-config/rpi9-network-interfaces.txt && \
sudo cp /etc/init.d/networking /home/pi/clusterednode-config/rpi9-initd-networking.txt && \
sudo cp /etc/init.d/rng-tools /home/pi/clusterednode-config/rpi9-initd-rng_tools.txt && \
sudo cp /etc/init.d/znodesrv /home/pi/clusterednode-config/rpi9-initd-znodesrv.txt && \
uname -a > /home/pi/clusterednode-config/rpi9-uname.txt && \
sudo cp /etc/fstab /home/pi/clusterednode-config/rpi9-fstab.txt && \
sudo cp /etc/nginx/nginx.conf /home/pi/clusterednode-config/rpi9-nginx.conf && \
sudo cp /etc/nginx/snippets/self-signed.conf /home/pi/clusterednode-config/rpi9-self-signed.conf && \
sudo cp /etc/nginx/snippets/ssl-params.conf /home/pi/clusterednode-config/rpi9-ssl-params.conf && \
pm2 list > /home/pi/clusterednode-config/rpi9-hdr-pm2-list.txt && \
pm2 show clusteredHDRnode > /home/pi/clusterednode-config/rpi9-hdr-pm2-show.txt && \
pm2 show pm2-logrotate > /home/pi/clusterednode-config/rpi9-logrotate-pm2-show.txt && \
pm2 prettylist > /home/pi/clusterednode-config/rpi9-pm2-prettylist.json && \
sudo cp /etc/sysctl.conf /home/pi/clusterednode-config/rpi9-sysctl.conf && \
sudo cp /etc/ssl/certs/dhparam.pem /home/pi/clusterednode-config/rpi9-dhparam.pem && \
sudo cp /etc/ssl/certs/nginx-selfsigned.crt /home/pi/clusterednode-config/rpi9-nginx-selfsigned.crt && \
sudo cp /etc/ssl/private/nginx-selfsigned.key /home/pi/clusterednode-config/rpi9-nginx-selfsigned.key"
scp -r pi@raspberrypi9:~/clusterednode-config/* ./rpi9/
# RaspberryPi10
echo "Exporting raspberrypi10 config files..."
ssh -p 32013 -T pi@giancarlobonansea.homeip.net "\
rm /home/pi/clusterednode-config/* && \
sudo cp /etc/hosts /home/pi/clusterednode-config/rpi10-hosts.txt && \
sudo cp /etc/network/interfaces /home/pi/clusterednode-config/rpi10-network-interfaces.txt && \
sudo cp /etc/init.d/networking /home/pi/clusterednode-config/rpi10-initd-networking.txt && \
sudo cp /etc/init.d/rng-tools /home/pi/clusterednode-config/rpi10-initd-rng_tools.txt && \
sudo cp /etc/init.d/znodesrv /home/pi/clusterednode-config/rpi10-initd-znodesrv.txt && \
uname -a > /home/pi/clusterednode-config/rpi10-uname.txt && \
sudo cp /etc/fstab /home/pi/clusterednode-config/rpi10-fstab.txt && \
sudo cp /etc/nginx/nginx.conf /home/pi/clusterednode-config/rpi10-nginx.conf && \
sudo cp /etc/nginx/snippets/self-signed.conf /home/pi/clusterednode-config/rpi10-self-signed.conf && \
sudo cp /etc/nginx/snippets/ssl-params.conf /home/pi/clusterednode-config/rpi10-ssl-params.conf && \
pm2 list > /home/pi/clusterednode-config/rpi10-hdr-pm2-list.txt && \
pm2 show clusteredHDRnode > /home/pi/clusterednode-config/rpi10-hdr-pm2-show.txt && \
pm2 show pm2-logrotate > /home/pi/clusterednode-config/rpi10-logrotate-pm2-show.txt && \
pm2 prettylist > /home/pi/clusterednode-config/rpi10-pm2-prettylist.json && \
sudo cp /etc/sysctl.conf /home/pi/clusterednode-config/rpi10-sysctl.conf && \
sudo cp /etc/ssl/certs/dhparam.pem /home/pi/clusterednode-config/rpi10-dhparam.pem && \
sudo cp /etc/ssl/certs/nginx-selfsigned.crt /home/pi/clusterednode-config/rpi10-nginx-selfsigned.crt && \
sudo cp /etc/ssl/private/nginx-selfsigned.key /home/pi/clusterednode-config/rpi10-nginx-selfsigned.key"
scp -r pi@raspberrypi10:~/clusterednode-config/* ./rpi10/
# RaspberryPi5
echo "Exporting raspberrypi5 config files..."
ssh -p 32007 -T pi@giancarlobonansea.homeip.net "\
rm /home/pi/clusterednode-config/* && \
sudo cp /etc/hosts /home/pi/clusterednode-config/rpi5-hosts.txt && \
sudo cp /etc/network/interfaces /home/pi/clusterednode-config/rpi5-network-interfaces.txt && \
sudo cp /etc/init.d/networking /home/pi/clusterednode-config/rpi5-initd-networking.txt && \
sudo cp /etc/init.d/rng-tools /home/pi/clusterednode-config/rpi5-initd-rng_tools.txt && \
sudo cp /etc/init.d/znodesrv /home/pi/clusterednode-config/rpi5-initd-znodesrv.txt && \
uname -a > /home/pi/clusterednode-config/rpi5-uname.txt && \
pm2 list > /home/pi/clusterednode-config/rpi5-api-pm2-list.txt && \
pm2 show clusteredAPInode > /home/pi/clusterednode-config/rpi5-api-pm2-show.txt && \
pm2 show pm2-logrotate > /home/pi/clusterednode-config/rpi5-logrotate-pm2-show.txt && \
pm2 prettylist > /home/pi/clusterednode-config/rpi5-pm2-prettylist.json && \
sudo cp /etc/sysctl.conf /home/pi/clusterednode-config/rpi5-sysctl.conf && \
sudo cp /etc/stunnel/redis-client.conf /home/pi/clusterednode-config/rpi5-stunnel-redis-client.conf && \
sudo cp /etc/default/stunnel /home/pi/clusterednode-config/rpi5-default-stunnel"
scp -r pi@raspberrypi5:~/clusterednode-config/* ./rpi5/
# RaspberryPi6
echo "Exporting raspberrypi6 config files..."
ssh -p 32008 -T pi@giancarlobonansea.homeip.net "\
rm /home/pi/clusterednode-config/* && \
sudo cp /etc/hosts /home/pi/clusterednode-config/rpi6-hosts.txt && \
sudo cp /etc/network/interfaces /home/pi/clusterednode-config/rpi6-network-interfaces.txt && \
sudo cp /etc/init.d/networking /home/pi/clusterednode-config/rpi6-initd-networking.txt && \
sudo cp /etc/init.d/rng-tools /home/pi/clusterednode-config/rpi6-initd-rng_tools.txt && \
sudo cp /etc/init.d/znodesrv /home/pi/clusterednode-config/rpi6-initd-znodesrv.txt && \
uname -a > /home/pi/clusterednode-config/rpi6-uname.txt && \
pm2 list > /home/pi/clusterednode-config/rpi6-api-pm2-list.txt && \
pm2 show clusteredAPInode > /home/pi/clusterednode-config/rpi6-api-pm2-show.txt && \
pm2 show pm2-logrotate > /home/pi/clusterednode-config/rpi6-logrotate-pm2-show.txt && \
pm2 prettylist > /home/pi/clusterednode-config/rpi6-pm2-prettylist.json && \
sudo cp /etc/sysctl.conf /home/pi/clusterednode-config/rpi6-sysctl.conf && \
sudo cp /etc/stunnel/redis-client.conf /home/pi/clusterednode-config/rpi6-stunnel-redis-client.conf && \
sudo cp /etc/default/stunnel /home/pi/clusterednode-config/rpi6-default-stunnel"
scp -r pi@raspberrypi6:~/clusterednode-config/* ./rpi6/
# RaspberryPi7
echo "Exporting raspberrypi7 config files..."
ssh -p 32010 -T pi@giancarlobonansea.homeip.net "\
rm /home/pi/clusterednode-config/* && \
sudo cp /etc/hosts /home/pi/clusterednode-config/rpi7-hosts.txt && \
sudo cp /etc/network/interfaces /home/pi/clusterednode-config/rpi7-network-interfaces.txt && \
sudo cp /etc/init.d/networking /home/pi/clusterednode-config/rpi7-initd-networking.txt && \
sudo cp /etc/init.d/rng-tools /home/pi/clusterednode-config/rpi7-initd-rng_tools.txt && \
sudo cp /etc/init.d/znodesrv /home/pi/clusterednode-config/rpi7-initd-znodesrv.txt && \
uname -a > /home/pi/clusterednode-config/rpi7-uname.txt && \
pm2 show clusteredPUBSUBnode > /home/pi/clusterednode-config/rpi7-pubsub-pm2-show.txt && \
pm2 prettylist > /home/pi/clusterednode-config/rpi7-pm2-prettylist.json && \
sudo cp /etc/sysctl.conf /home/pi/clusterednode-config/rpi7-sysctl.conf && \
sudo cp /etc/stunnel/redis-server.conf /home/pi/clusterednode-config/rpi7-stunnel-redis-server.conf && \
sudo cp /etc/default/stunnel /home/pi/clusterednode-config/rpi7-default-stunnel && \
sudo cp /etc/init.d/stunnel /home/pi/clusterednode-config/rpi7-initd-stunnel && \
sudo cp /etc/init.d/redis_6379 /home/pi/clusterednode-config/rpi7-initd-redis_6379 && \
sudo cp /etc/init.d/redis_6378 /home/pi/clusterednode-config/rpi7-initd-redis_6378 && \
sudo cp /etc/init.d/redis_6377 /home/pi/clusterednode-config/rpi7-initd-redis_6377 && \
sudo cp /etc/redis/6379.conf /home/pi/clusterednode-config/rpi7-redis-6379.conf && \
sudo cp /etc/redis/6378.conf /home/pi/clusterednode-config/rpi7-redis-6378.conf && \
sudo cp /etc/redis/6377.conf /home/pi/clusterednode-config/rpi7-redis-6377.conf"
scp -r pi@raspberrypi7:~/clusterednode-config/* ./rpi7/
# RaspberryPi8
echo "Exporting raspberrypi8 config files..."
ssh -p 32011 -T pi@giancarlobonansea.homeip.net "\
rm /home/pi/clusterednode-config/* && \
sudo cp /etc/hosts /home/pi/clusterednode-config/rpi8-hosts.txt && \
sudo cp /etc/network/interfaces /home/pi/clusterednode-config/rpi8-network-interfaces.txt && \
sudo cp /etc/init.d/networking /home/pi/clusterednode-config/rpi8-initd-networking.txt && \
sudo cp /etc/init.d/rng-tools /home/pi/clusterednode-config/rpi8-initd-rng_tools.txt && \
sudo cp /etc/init.d/znodesrv /home/pi/clusterednode-config/rpi8-initd-znodesrv.txt && \
uname -a > /home/pi/clusterednode-config/rpi8-uname.txt && \
pm2 prettylist > /home/pi/clusterednode-config/rpi8-pm2-prettylist.json && \
sudo cp /etc/sysctl.conf /home/pi/clusterednode-config/rpi8-sysctl.conf && \
sudo cp /etc/stunnel/redis-server.conf /home/pi/clusterednode-config/rpi8-stunnel-redis-server.conf && \
sudo cp /etc/default/stunnel /home/pi/clusterednode-config/rpi8-default-stunnel && \
sudo cp /etc/init.d/stunnel /home/pi/clusterednode-config/rpi8-initd-stunnel && \
sudo cp /etc/init.d/redis_6379 /home/pi/clusterednode-config/rpi8-initd-redis_6379 && \
sudo cp /etc/init.d/redis_6378 /home/pi/clusterednode-config/rpi8-initd-redis_6378 && \
sudo cp /etc/init.d/redis_6377 /home/pi/clusterednode-config/rpi8-initd-redis_6377 && \
sudo cp /etc/redis/6379.conf /home/pi/clusterednode-config/rpi8-redis-6379.conf && \
sudo cp /etc/redis/6378.conf /home/pi/clusterednode-config/rpi8-redis-6378.conf && \
sudo cp /etc/redis/6377.conf /home/pi/clusterednode-config/rpi8-redis-6377.conf"
scp -r pi@raspberrypi8:~/clusterednode-config/* ./rpi8/

#pm2 list > /home/pi/clusterednode-config/rpi7-api-pm2-list.txt && \
#pm2 list > /home/pi/clusterednode-config/rpi8-api-pm2-list.txt && \
