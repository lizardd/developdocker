docker build -t alateam/workbench-c9-nginx .



docker run -p 80:80 -p 81:81 -p 82:82 --name test1 --env C9_AUTH=ala:ala alateam/workbench-c9-nginx

docker run -it -p 80:80 -p 81:81 -p 82:82 -p 83:83 --env C9_AUTH=ala:ala alateam/workbench-c9-nginx /bin/zsh

# 关闭nginx的守护进程执行，防止docker启动后，自动停止的问题
echo "daemon off;" >> /etc/nginx/nginx.conf 
service php5-fpm start && nginx



