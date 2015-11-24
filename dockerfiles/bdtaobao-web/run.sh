#!/bin/bash


service apache2 start
# source /etc/apache2/envvars
# exec apache2 

pm2 start /tools/cloud9/server.js --no-daemon --name cloud9 -- --packed true --port ${CLOUD9_PORT:-8181} --auth ${CLOUD9_AUTH:-user:pass} -w /workspace
