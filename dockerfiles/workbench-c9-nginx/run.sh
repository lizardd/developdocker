#!/bin/bash

# echo "daemon off;" >> /etc/nginx/nginx.conf 
service php5-fpm start && nginx
pm2 start /tools/cloud9/server.js --no-daemon --name cloud9 -- --packe true -p 81 -l 0.0.0.0 -a ${C9_AUTH:-user:pass} -w /workspace


