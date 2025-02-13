#!/bin/bash

local_dir=$(pwd)
local_user=$(echo $USER)

Error(){
    echo "[-] Ha ocurrido un error"
    exit 2
}

Update(){
    sudo apt update && sudo apt upgrade
}

Install(){
    sudo apt install -y dunst bat lsd rofi calc polybar bspwm sxhkd zsh curl git i3 net-tools ranger btop cava fzf ripgrep 
}

Fonts(){
    cp -r $local_dir/Fonts/* /usr/share/fonts
}

Dependencias{
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    cd $local_dir/repositorio
    sudo dpkg -i zsh-autosuggestions_0.7.0-1+3.1_amd64.deb && sudo dpkg -i zsh-syntax-highlighting_0.7.1-1+3.1_amd64.deb
}

