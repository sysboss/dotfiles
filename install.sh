#!/bin/bash
# RUN CAREFULY!

dotfiles="/home/proj/dotfiles"

curl -o ~/.git-prompt.sh \
    https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh

chmod +x ~/.git-prompt.sh

# backup original files
mv ~/.bashrc ~/.bashrc_orig
mv ~/.aliases ~/.aliases_orig

if [[ ! -f ~/.gitconfig ]]; then
    cp gitconfig ~/.gitconfig
fi

ln -f -r -s bashrc ~/.bashrc
ln -f -r -s aliases ~/.aliases
ln -f -r -s git-fetch-branch ~/git-fetch-branch
ln -f -r -s git_term ~/.git_term
ln -f -r -s tmux.conf ~/.tmux.conf
ln -f -r -s vimrc ~/.vimrc
