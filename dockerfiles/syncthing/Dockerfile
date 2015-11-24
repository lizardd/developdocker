FROM ubuntu:14.04.2

RUN apt-get update

##################### 常用工具
RUN apt-get -y install wget openssl unzip python git



ENV VERSION v0.10.26
ENV RELEASE syncthing-linux-amd64-v0.10.26

# Using wget because an ADD step with a URL isn't cached by docker build.
RUN wget -O /$RELEASE.tar.gz \
    https://github.com/syncthing/syncthing/releases/download/$VERSION/$RELEASE.tar.gz
RUN tar zxf /$RELEASE.tar.gz -C /usr/local && \
    ln -s /usr/local/$RELEASE/syncthing /usr/local/bin && \
    rm /$RELEASE.tar.gz

RUN chmod 777 /usr/local/$RELEASE

RUN useradd -m -u 1002 syncthing

EXPOSE 8080 22000 21025/udp
VOLUME ["/home/syncthing/.config/syncthing", "/home/syncthing/Sync"]

ADD init /usr/local/bin/
RUN chmod 755 /usr/local/bin/init

CMD ["/usr/local/bin/init"]
