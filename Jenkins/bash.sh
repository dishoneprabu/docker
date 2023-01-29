#! /bin/bash

apt update && apt upgrade -y >> /etc/bash-logs/log-jenkins.txt

apt install docker.io  >> /etc/bash-logs/log-jenkins.txt

docker --version >> /etc/bash-logs/log-jenkins.txt

docker run -d -h Jenkins --name Jenkins -p 8080:8080 -p 50000:50000 --restart=on-failure -v jenkins_home:/var/jenkins_home jenkins/jenkins >> /etc/bash-logs/log-jenkins.txt

docker ps -a >> /etc/bash-logs/log-jenkins.txt