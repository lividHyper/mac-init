#!/bin/bash
ST_BREW=`command -v git`

# 1. install homebrew 
# 1.1 Command Line Tools will be install auto. 
# 1.2 If exist , then update it 
if [[ $ST_BREW == "" ]] ; then
    /bin/bash -c "$(curl  https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    brew update
fi

# 1.2 if you has socks,
echo 'INFO: brew support https-proxy, you can use it to get speed, otherwise you can choose local repo.'
