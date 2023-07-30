#! /bin/bash

sudo apt-get install fd-find -y
ln -s $(which fdfind) /usr/local/bin/fd
