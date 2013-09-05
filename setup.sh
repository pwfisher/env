#!/bin/sh

cp .ackrc ~
cp .bash_profile ~
cp .gitconfig ~

ln -nfs ~/projects/env/bin ~/bin
ln -nfs ~/projects/env/public_html ~/public_html

cd ~/projects
git clone git@github.com:pwfisher/pwfisher.com.git
git clone git@github.com:pwfisher/ranx.us.git

