#!/bin/bash

OFFICE_USERNAME=$(security find-generic-password -s jomax | grep acct | cut -d '"' -f 4)
OFFICE_PASSWORD=$(security find-generic-password -s jomax -w)
OFFICE_REALNAME="Joshua Barratt"
OFFICE_EMAIL="josh@mediatemple.net"

#docker rm $(docker ps -afq name=mutt)
docker run --rm -it \
    -v $HOME/.vim:/home/user/.vim \
    -e OFFICE_USERNAME -e OFFICE_PASSWORD -e OFFICE_REALNAME -e OFFICE_EMAIL \
    --name mutt \
    mutt
