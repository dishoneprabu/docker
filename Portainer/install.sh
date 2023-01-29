#! bin/bash

apt update && apt upgrade -y >> /etc/bash-logs/log-portainer.txt
apt install docker.io  >> /etc/bash-logs/log-portainer.txt
docker --version >> /etc/bash-logs/log-portainer.txt
docker stop Portainer >> /etc/bash-logs/log-portainer.txt
docker rm Portainer >> /etc/bash-logs/log-portainer.txt
docker rmi portainer/portainer >> /etc/bash-logs/log-portainer.txt
docker pull portainer/portainer >> /etc/bash-logs/log-portainer.txt
docker run -d -p 8000:8000 -p 9443:9443 --name Portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest >> /etc/bash-logs/log-portainer.txt
docker ps -a >> /etc/bash-logs/log-portainer.txt