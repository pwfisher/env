#!/bin/sh

cp .ackrc ~
cp .bash_profile ~
cp .gitconfig ~

ln -nfs bin ~/bin
ln -nfs public_html ~/public_html

mkdir ~/projects
cd ~/projects
git clone git@github.com:pwfisher/pwfisher.com.git
git clone git@github.com:pwfisher/ranx.us.git

