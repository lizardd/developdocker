FROM alateam/ubuntu


######### intall nginx and php
RUN apt-get -y install nginx 
##加载php到nginx
RUN echo "cgi.fix_pathinfo = 0;" >> /etc/php5/fpm/php.ini

RUN rm -rf /etc/nginx/sites-enabled
ADD /workspace-init /temp/workspace-init




EXPOSE 80
WORKDIR /runner
ADD init.sh init.sh
ADD run.sh run.sh
RUN chmod 755 *.sh
CMD ["./run.sh"]