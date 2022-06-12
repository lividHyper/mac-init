#!/bin/bash 
# require Network is reachable
# QA: if github or other website is unreachable, please set socks


is_command() {
    command -v $@ &> /dev/null; 
}

install_or_upgrade_by_brew() {
    if is_command $@; then
        brew upgrade $@;
    else
        brew install $@;
    fi
}

set_git_config(){
    # 1.2 set alias 
    git config --global alias.co checkout
    git config --global alias.br branch
    git config --global alias.ci commit
    git config --global alias.st status
    # 1.3 add public rsa-key 
    ssh-keygen -t rsa -C "livid.xh@gmail.com"
    # 1.4 add git config 
    git config --global user.name "livid"
    git config --global user.email livid.xh@gmail.com
}


dev_tools=(
    git
    wget
    telnet
)
# in arm mac , u shoule install it manually
software_lists=(
    iTerm2
    google-chrome
    Alfred
    visual-studio-code
    sublime-text
)


# 1. install homebrew 
if is_command brew ; then
    brew update
else
    /bin/bash -c "$(curl  https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi


# 2. install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


# 3. install dev_tools
install_or_upgrade_by_brew ${dev_tools[@]}

# 4. install cask 
brew install ${software_lists[@]} --cask


# 5. set git config 
if is_command git;then
    set_git_config
fi









