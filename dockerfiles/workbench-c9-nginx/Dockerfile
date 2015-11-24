FROM alateam/ubuntu


RUN cd /tools && git clone https://github.com/c9/core.git cloud9
WORKDIR /tools/cloud9
RUN chmod 755 scripts/*.sh
RUN scripts/install-sdk.sh

######### intall nginx and php
RUN apt-get -y install nginx 
RUN echo "cgi.fix_pathinfo = 0;" >> /etc/php5/fpm/php.ini
ADD etc/vhost/default.conf /etc/nginx/sites-available/default

RUN mkdir -p /workspace/logs/nginx


#安装phpmyadmin
RUN wget http://jaist.dl.sourceforge.net/project/phpmyadmin/phpMyAdmin/4.3.9/phpMyAdmin-4.3.9-all-languages.tar.gz -O - | tar -xz
RUN mv phpMyAdmin* /phpmyadmin
ADD etc/phpmyadmin.config.inc.php /phpmyadmin/config.inc.php
ADD etc/vhost/phpmyadmin.conf /etc/nginx/sites-available/phpmyadmin
RUN ln -s /etc/nginx/sites-available/phpmyadmin /etc/nginx/sites-enabled/phpmyadmin


EXPOSE 80 81 82

WORKDIR /runner
ADD run.sh run.sh
RUN chmod 755 *.sh
CMD ["./run.sh"]
