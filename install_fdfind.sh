#! /bin/bash

sudo apt-get install fd-find -y
ln -s $(which fdfind) ~/.local/bin/fd
