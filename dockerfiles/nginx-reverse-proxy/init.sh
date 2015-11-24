#!/bin/bash


sitesEnabledPath="/workspace/sites-enabled" 
if [ -d "$sitesEnabledPath" ]
then
	echo "文件已经存在，覆盖存在危险"
	exit 0
fi

mv /temp/workspace-init/sites-enabled /workspace/sites-enabled
mv /temp/workspace-init/default /workspace/default

echo "daemon off;" >> /etc/nginx/nginx.conf
cp /etc/nginx/nginx.conf /workspace/nginx.conf
cp /etc/nginx/proxy_params /workspace/proxy_params
echo "初始化成功"