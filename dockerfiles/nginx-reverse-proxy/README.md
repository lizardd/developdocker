docker build -t alateam/nginx-reverse-proxy .

##设置路径

	nginx_proxy_path=/Users/leeke/Desktop/nginx-proxy

##初始化

	docker run --rm -v $nginx_proxy_path:/workspace alateam/nginx-reverse-proxy /runner/init.sh
        docker run --rm -v /home/ala/nginx-proxy:/workspace alateam/nginx-reverse-proxy /runner/init.sh

##第一次启动

	docker run --restart=always -p 80:80 -d --name nginx-proxy -v $nginx_proxy_path:/workspace  alateam/nginx-reverse-proxy
        docker run --restart=always -p 80:80 -d --name nginx-proxy -v /home/ala/nginx-proxy:/workspace  alateam/nginx-reverse-proxy
##修改配置文件后重新启动

	docker restart nginx-proxy



