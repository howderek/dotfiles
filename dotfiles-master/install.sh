#!/bin/bash

echo "Installing Derek's dotfiles..."
dotfile_tmpdir=`mktemp -d 2>/dev/null || mktemp -d -t 'dotfile_tmpdir'`

function cleanup {
  rm -rf "$dotfile_tmpdir"
}

trap cleanup EXIT

cd $dotfile_tmpdir
curl -O https://github.com/howderek/dotfiles/archive/master.tar.gz
tar -zxf master.tar.gz
cd ./dotfiles-master
mv ./files/* ~/

echo "Installed. Login again to see changes."
