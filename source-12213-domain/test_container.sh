#!/bin/bash
docker run -d -P --name test_sshd 12213-domain-home-in-image-wdt:latest
export DOCKER_PORT=`docker port test_sshd 22`
export DOCKER_PORT=`echo $DOCKER_PORT | sed 's/0.0.0.0://g' `
echo $DOCKER_PORT
ssh -i ~/.ssh/priv.txt  -o "UserKnownHostsFile=/dev/null" -o "StrictHostKeyChecking=no"  oracle@localhost -p $DOCKER_PORT
#docker container stop test_sshd
#docker container rm test_sshd
