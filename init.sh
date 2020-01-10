#! /bin/bash


echo "creating (if not) config dir"
mkdir -p $HOME/.config/music_helper/{logs,lock}/{dl,sync}

echo "Copying script to ~/.bin"
cp dl ~/.bin/music_dl
cp sync ~/.bin/music_sync

echo "Symlinking the sh_lib to ~/.bin"
ln -rfs `pwd`/sh_lib/sh_lib ~/.bin/sh_lib
