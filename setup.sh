#!/bin/sh
echo $SHELL
echo "Setting up your workspace"
read -p "Do you want to install zsh? [y/n]" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    apt-get update
    apt-get install zsh -y
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

read -p "Do you want to install powerlevel10k [y/n]" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
fi

read -p "Do you want to setup a zshrc? [y/n]" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    cp zshrc2 ~/.zshrc
    cp agnoster.zsh-theme ~/.oh-my-zsh/custom/themes/
    source ~/.zshrc
fi
