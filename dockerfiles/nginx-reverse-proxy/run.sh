#!/bin/bash


mkdir -p /workspace/logs

ln -s /workspace/sites-enabled /etc/nginx/

ln -sf /workspace/nginx.conf /etc/nginx/nginx.conf
ln -sf /workspace/proxy_params /etc/nginx/proxy_params 
service php5-fpm start && nginx