docker run --hostname=f2dd7c012733 --env=PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin --network=bridge --restart=no --label='org.opencontainers.image.ref.name=ubuntu' --label='org.opencontainers.image.version=24.04' --runtime=runc -t -d ubuntu


docker start ubuntu1
docker exec -it ubuntu1 /bin/bash

apt-get update

sudo apt-get install iputils-ping

docker commit ubuntu1 ubuntu_img_with_ping
