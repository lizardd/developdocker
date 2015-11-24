docker build -t alateam/syncthing .


export VOLUMES=/Users/leeke/Desktop/test
sudo mkdir -p $VOLUMES/{config,data}

docker run -d --name syncthing \
		   --restart=always   
           -p 8080:8080 -p 22000:22000 -p 21025:21025/udp \
           -v $VOLUMES/config:/home/syncthing/.config/syncthing \
           -v $VOLUMES/data:/home/syncthing/Sync \
           alateam/syncthing

docker run -d --link discosrv:discosrv\
		   --name syncthing \
           -p 8080:8080 -p 22000:22000 -p 21025:21025/udp \
           -v $VOLUMES/config:/home/syncthing/.config/syncthing \
           -v $VOLUMES/data:/home/syncthing/Sync \
           alateam/syncthing


docker stop syncthing && docker rm syncthing


export VOLUMES=/home/ala/sync/ALA-TEAM