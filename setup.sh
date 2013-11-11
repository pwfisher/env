#!/bin/sh

###
# Link personal env config files to copies under SCM in this project.
#
for FILE in .ackrc .bash_profile .gitconfig
do
	ln projects/env/$FILE ~/$FILE
done

ln -nfs ~/projects/env/bin ~/bin
ln -nfs ~/projects/env/public_html ~/public_html

cd ~/projects
git clone git@github.com:pwfisher/pwfisher.com.git
git clone git@github.com:pwfisher/ranx.us.git

