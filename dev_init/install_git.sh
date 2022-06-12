#!/bin/bash 
ST_GIT=`command -v git`


# 1. install git , require brew
if [[ $ST_GIT == '' ]] ; then
    # 1.1 install
    brew install git 
    # 1.2 set alias 
    git config --global alias.co checkout
    git config --global alias.br branch
    git config --global alias.ci commit
    git config --global alias.st status
    # 1.3 add public rsa-key 
    ssh-keygen -t rsa -C "livid.xh@gmail.com"
else
    brew upgrade git
fi



