FROM ubuntu:14.04
MAINTAINER alateam <team@ala-it.com>

##################### 常用文件夹准备
RUN mkdir /workspace /tools /runner /temp
ENV DEBIAN_FRONTEND noninteractive

###########ADD safe user
RUN useradd -m -u 600 safe

##################### 更新系统
RUN apt-get update

##################### 常用工具
RUN apt-get -y install gcc make build-essential curl wget vim openssl unzip python git mysql-client

##################### install oh-my-zsh
RUN apt-get -y install zsh
RUN git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
RUN cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
RUN chsh -s /bin/zsh

##############install nvm
ENV HOME /root
ENV PATH /root/.nvm/v0.10.36/bin:$PATH
RUN git clone https://github.com/creationix/nvm.git $HOME/.nvm
RUN pwd $HOME/.nvm/


##############install node
RUN bash -c '. $HOME/.nvm/nvm.sh; nvm install 0.10.36 && nvm alias default 0.10.36'
#########install pm2
Run npm install pm2 -g



############install php
RUN apt-get -y install php5-fpm php5-cli php5-mysql php5-mcrypt php5-gd php-pear php-apc php5-curl  php5-sqlite
RUN php5enmod mcrypt


############install composer and laravel
RUN  curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer











