#!/bin/bash

export OFFICE_USERNAME=$(security find-generic-password -s jomax | grep acct | cut -d '"' -f 4)
export OFFICE_PASSWORD=$(security find-generic-password -s jomax -w)
export OFFICE_REALNAME="Joshua Barratt"
export OFFICE_EMAIL="josh@mediatemple.net"

#docker rm $(docker ps -afq name=mutt)

docker run --rm -it \
    -v $HOME/.vim:/home/user/.vim \
    -e OFFICE_USERNAME -e OFFICE_PASSWORD -e OFFICE_REALNAME -e OFFICE_EMAIL \
    --name mutt \
    mutt
