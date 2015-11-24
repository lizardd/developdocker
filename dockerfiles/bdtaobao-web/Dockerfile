FROM ubuntu:12.04
MAINTAINER alateam <team@ala-it.com>


ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update



RUN apt-get -y install gcc make build-essential
RUN apt-get -y install curl wget vim openssl unzip
RUN apt-get -y install python
RUN apt-get -y install git
##############install nvm
ENV HOME /root
ENV	PATH /root/.nvm/v0.10.36/bin:$PATH
RUN git clone https://github.com/creationix/nvm.git $HOME/.nvm
RUN pwd $HOME/.nvm/
##############install node
RUN bash -c '. $HOME/.nvm/nvm.sh; nvm install 0.10.36 && nvm alias default 0.10.36'

#########install pm2
Run npm install pm2 -g





############ install cloud9
RUN mkdir /tools
RUN cd /tools && git clone https://github.com/c9/core.git cloud9
WORKDIR /tools/cloud9
RUN git pull origin master
#ADD install-sdk.sh scripts/install-sdk.sh
#RUN chmod 755 scripts/*.sh
RUN scripts/install-sdk.sh





RUN apt-get -y install apache2 libapache2-mod-php5 php5-mysql php5-gd php-pear php-apc php5-curl curl lynx-cur wget mysql-client
RUN apt-get -y install php5-mcrypt
RUN a2enmod php5
# Enable mod_rewrite
RUN a2enmod rewrite
#RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN wget http://jaist.dl.sourceforge.net/project/phpmyadmin/phpMyAdmin/4.3.9/phpMyAdmin-4.3.9-all-languages.tar.gz -O - | tar -xz
RUN mv phpMyAdmin* /phpmyadmin
ADD phpmyadmin.config.inc.php /phpmyadmin/config.inc.php
ADD apache.conf /etc/apache2/sites-available/default
RUN mkdir -p /workspace/htdocs
RUN chown -R www-data:www-data /workspace/htdocs
RUN mkdir /apache_logs
RUN chown -R www-data:www-data /apache_logs




ADD run.sh /run.sh

RUN chmod 755 /*.sh



EXPOSE 80



CMD ["/run.sh"]

