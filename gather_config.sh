#!/usr/bin/env bash
# RaspberryPi1
ssh -p 32003 -T pi@giancarlobonansea.homeip.net "\
"
scp -r pi@raspberrypi1:~/clusterednode-config/* ./rpi1/
# RaspberryPi2
ssh -p 32004 -T pi@giancarlobonansea.homeip.net "\
"
scp -r pi@raspberrypi2:~/clusterednode-config/* ./rpi2/
# RaspberryPi3
ssh -p 32005 -T pi@giancarlobonansea.homeip.net "\
"
scp -r pi@raspberrypi3:~/clusterednode-config/* ./rpi3/
# RaspberryPi4
ssh -p 32006 -T pi@giancarlobonansea.homeip.net "\
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
"
scp -r pi@raspberrypi5:~/clusterednode-config/* ./rpi5/
# RaspberryPi6
ssh -p 32008 -T pi@giancarlobonansea.homeip.net "\
"
scp -r pi@raspberrypi6:~/clusterednode-config/* ./rpi6/
